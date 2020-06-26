import React, {useContext, useState, useEffect, useRef} from 'react';
import {
  Table,
  Input,
  Button,
  Popconfirm,
  Form,
  PageHeader,
  Card,
  message, InputNumber, Row, Col, Steps, Skeleton, DatePicker
} from 'antd';
import {useHistory, useLocation} from "react-router-dom";
import * as indexAPI from "../../api/page";
import '../product/product.less'

const {Step} = Steps;
const EditableContext = React.createContext();
const EditableRow = ({index, ...props}) => {
  const [form] = Form.useForm();
  return (
      <Form form={form} component={false}>
        <EditableContext.Provider value={form}>
          <tr {...props} />
        </EditableContext.Provider>
      </Form>
  );
};

const EditableCell = ({
  title,
  editable,
  children,
  dataIndex,
  record,
  handleSave,
  ...restProps
}) => {
  const [editing, setEditing] = useState(false);
  const inputRef = useRef();
  const form = useContext(EditableContext);

  useEffect(() => {
    if (editing) {
      inputRef.current.focus();
    }
  }, [editing]);

  const toggleEdit = () => {
    setEditing(!editing);
    form.setFieldsValue({
      [dataIndex]: record[dataIndex],
    });
  };

  const save = async e => {
    try {
      const values = await form.validateFields();
      toggleEdit();
      handleSave({...record, ...values});
    } catch (errInfo) {
      console.log('Save failed:', errInfo);
    }
  };

  let childNode = children;

  if (editable) {
    childNode = editing ? (
        <Form.Item
            name={dataIndex}
            rules={[
              {
                required: true,
                message: `${title} 不能为空`,
              },
            ]}
        >
          <InputNumber  ref={inputRef} min={0} max={99999} precision={dataIndex==='productInventory'?0:2}
                       onPressEnter={save} onBlur={save}/>
        </Form.Item>
    ) : (
        <div
            className="editable-cell-value-wrap"
            onClick={toggleEdit}
        >
          {children}
        </div>
    );
  }

  return <td {...restProps}>{childNode}</td>;
};

const ProductAttributes = () => {
  const history = useHistory()
  let {isSteps, productDetail} = useLocation().state
  const [dataSource, setDataSource] = useState(
      productDetail.productDistinctions)
  const [columns, setColumns] = useState([
    {
      title: '版本',
      dataIndex: 'versionContent',
    }, {
      title: '尺寸',
      dataIndex: 'sizeContent'
    }, {
      title: '配置',
      dataIndex: 'specificationContent'
    }, {
      title: '口味',
      dataIndex: 'tasteContent'
    }, {
      title: '颜色',
      dataIndex: 'colourContent'
    }, {
      title: '种类',
      dataIndex: 'kindContent'
    }, {
      title: '套餐',
      dataIndex: 'comboContent'
    }, {
      title: '价格',
      width:180,
      dataIndex: 'productPrice',
      editable: true,
      render: (price) => {
        return (
            `￥ ${price}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        )
      }
    }, {
      title: '库存',
      width:180,
      dataIndex: 'productInventory',
      editable: true,
      render: (productInventory) => {
        return (
            `${productInventory}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        )
      }
    }
  ])
  const [proBtn, setProBtn] = useState({
    content: '提交',
    load: false,
  });

  const handleSave = row => {
    const newData = [...dataSource];
    const index = newData.findIndex(
        item => row.distinctionId === item.distinctionId);
    const item = newData[index];
    newData.splice(index, 1, {...item, ...row});
    setDataSource(newData)
  };
  const components = {
    body: {
      row: EditableRow,
      cell: EditableCell,
    },
  };
  const column = columns.map(col => {
    if (!col.editable) {
      return col;
    }
    return {
      ...col,
      onCell: record => ({
        record,
        editable: col.editable,
        dataIndex: col.dataIndex,
        title: col.title,
        handleSave: handleSave,
      }),
    };
  });

  //添加修改商品配置
  const editProductAtt = () => {
    let flag = false
    dataSource.some((item) => {
      if (item.productPrice === 0 || item.productPrice == null) {
        flag = true
        return flag
      }
    })
    if (flag) {
      return message.warn("配置价格不能为空!");
    }
    setProBtn({
      content: '提交中...',
      load: true,
    })
    indexAPI.editProductAttributes(dataSource).then(res => {
      if (res.success) {
        message.success("设置成功")
        history.push(`/products/product`)
      }
    }).catch(error => {
          setProBtn({
            content: '提交',
            load: false,
          })
        }
    )
  }

  //计算全排列
  const getCombination = (...array) => {
    //getCombination(['a','b','c'],['d','e','f','g'],['h','i'],[5552,555,8,'asdahsj'])
    let resultArr = [];
    array.map((arrItem) => {
      if (resultArr.length === 0) {
        let firstItem = [];
        arrItem.map(item => {
          firstItem.push([item]);
        })
        resultArr = firstItem
      } else {
        const emptyArray = [];
        resultArr.map((item) => {
          arrItem.map((value) => {
            emptyArray.push([...item, value])
          })
        })
        resultArr = emptyArray
      }
    });
    return resultArr;
  }

  //设置显示的列
  const editColumns = () => {
    const column = []
    columns.map(item => {
      if (productDetail.productDistinctions[0][item.dataIndex] !== null) {
        column.push(item)
      }
    })
    setColumns(column)
  }

  useEffect(() => {
    editColumns();
    return () => {
    }
  }, [])

  const title = (
      <Button type='primary' onClick={editProductAtt}
              loading={proBtn.load}>{proBtn.content}</Button>
  )

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="商品属性价格库存"
        />
        <Card title={title} className='product-attributes'>
          {isSteps ? (<Row justify="center" gutter={[0, 30]}>
            <Col xs={24} sm={24} md={14} lg={14} xl={14}>
              <Steps className="add-product-steps" current={1} size="small">
                <Step title="基本信息" description="填写商品基本信息"/>
                <Step title="设置商品属性" description="设置商品属性价格库存"/>
              </Steps>
            </Col>
          </Row>) : null
          }
          <Table
              rowKey={(item) => item.distinctionId}
              components={components}
              rowClassName={() => 'editable-row'}
              pagination={{hideOnSinglePage: true}}
              bordered
              dataSource={dataSource}
              columns={column}
          />
        </Card>
      </>
  );
}
export default ProductAttributes