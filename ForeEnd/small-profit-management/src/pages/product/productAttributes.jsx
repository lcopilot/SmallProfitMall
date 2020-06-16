import React, {useEffect, useState} from "react";
import {
  Button,
  Card, Cascader,
  Col,
  DatePicker,
  Form,
  Input,
  Modal, PageHeader,
  Row,
  Select, Steps,
  Table, Upload
} from "antd";
import {useHistory, useLocation} from "react-router-dom";



const {Option} = Select;
const {Step} = Steps;

const ProductAttributes=()=>{
  const history = useHistory()
  //获取路由传过来的值
  let {isSteps,productDetail} = useLocation().state
  const [proFromBtn, setProFromBtn] = useState({
    content: '提交',
    load:false,
  });
  const [form] = Form.useForm();

  //表单布局
  const formItemLayout = {
    labelCol: {
      xs: {span: 24},
      sm: {span: 4},
    },
    wrapperCol: {
      xs: {span: 24},
      sm: {span: 12},
    },
  };
  //动态加载表单布局
  const formItemLayoutWithOutLabel = {
    wrapperCol: {
      xs: {span: 24, offset: 0},
      sm: {span: 20, offset: 4},
    },
  };
  //动态加载表单布局
  const formItemLayoutWith = {
    wrapperCol: {
      xs: {span: 24, offset: 0},
      sm: {span: 12, offset: 4},
    },
  };
  //渲染商品属性列表
  const getProductAttOption = (attributes) => {
    const productAttList = [];
    Object.keys(productDetail).some((item) => {
        if (attributes === item && productDetail[item].length > 0) {
          productDetail[item].map((attributes) => {
            let att={
              id:attributes.attributeId,
              content:attributes.attributeContent
            }
            productAttList.push(att)
          })
        }
    })
    const roleOption = []
    productAttList.map(item => {
      roleOption.push((<Option key={item.id}  value={item.id}>{item.content}</Option>));
    })
    return roleOption
  }
  //回显商品属性配置
  const setProductAtt=()=>{
    if (productDetail){
      form.setFieldsValue({
        productAttributes: productDetail.productDistinctions,
      })
    }
  }
  //添加修改商品配置
  const editProductAtt=()=>{
    form.validateFields().then(values => {
      console.log(values)
    })
  }
  //计算全排列
  const getCombination=(...array)=>{
    let resultArr =[];
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
  // console.log(getCombination(['a','b','c'],['d','e','f','g'],['h','i'],[5552,555,8,'asdahsj']))

  useEffect(()=>{
    setProductAtt();
    return ()=>{}
  },[])

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="商品属性价格库存"
        />
        <Card>
          {isSteps ? (<Row justify="center" gutter={[0, 30]}>
            <Col xs={24} sm={24} md={14} lg={14} xl={14}>
              <Steps className="add-product-steps" current={1}>
                <Step title="基本信息" description="填写商品基本信息"/>
                <Step title="商品属性" description="设置商品属性之间的价格库存"/>
              </Steps>
            </Col>
          </Row>) : null
          }
          <Form
              form={form}
              {...formItemLayout}
              initialValues={{remember: true}}
          >
            <Form.List name="productAttributes">
              {(fields, {add, remove}) => {
                return (
                    <>
                      {fields.map((field, index) => (
                          <Form.Item
                              className="add-product-attributes"
                              key={index}
                              {...(formItemLayoutWithOutLabel)}
                          >
                            <Input.Group compact>
                              {
                                productDetail.productDistinctions[0].versionId?<Form.Item
                                    name={[field.name, 'versionId']}
                                    noStyle
                                >
                                  <Select  placeholder="版本" disabled>
                                    {getProductAttOption('version')}
                                  </Select>
                                </Form.Item>:<></>
                              }
                              {
                                productDetail.productDistinctions[0].kindId?<Form.Item
                                    name={[field.name, 'kindId']}
                                    noStyle
                                >
                                  <Select  placeholder="种类" disabled>
                                    {getProductAttOption('kind')}
                                  </Select>
                                </Form.Item>:<></>
                              }
                              {
                                productDetail.productDistinctions[0].tasteId?<Form.Item
                                    name={[field.name, 'tasteId']}
                                    noStyle
                                >
                                  <Select   placeholder="口味" disabled>
                                    {getProductAttOption('taste')}
                                  </Select>
                                </Form.Item>:<></>
                              } {
                                productDetail.productDistinctions[0].specificationId? <Form.Item
                                    name={[field.name, 'specificationId']}
                                    noStyle
                                >
                                  <Select   placeholder="配置" disabled>
                                    {getProductAttOption('specification')}
                                  </Select>
                                </Form.Item>:<></>
                              } {
                                productDetail.productDistinctions[0].comboId? <Form.Item
                                    name={[field.name, 'comboId']}
                                    noStyle
                                >
                                  <Select  placeholder="套餐" disabled>
                                    {getProductAttOption('combo')}
                                  </Select>
                                </Form.Item>:<></>
                              }{
                                productDetail.productDistinctions[0].colourId?<Form.Item
                                    name={[field.name, 'colourId']}
                                    noStyle
                                >
                                  <Select   placeholder="颜色" disabled>
                                    {getProductAttOption('colour')}
                                  </Select>
                                </Form.Item>:<></>
                              }{
                                productDetail.productDistinctions[0].sizeId?<Form.Item
                                    name={[field.name, 'sizeId']}
                                    noStyle
                                >
                                  <Select   placeholder="尺寸" disabled>
                                    {getProductAttOption('size')}
                                  </Select>
                                </Form.Item>:<></>
                              }
                              <Form.Item
                                  name={[field.name, 'productPrice']}
                                  noStyle
                              >
                                <Input prefix="￥" suffix="元" type="number" style={{width: '15%'}} placeholder="价格"/>

                              </Form.Item>
                              <Form.Item
                                  name={[field.name, 'productInventory']}
                                  noStyle
                              >
                                <Input type="number" style={{width: '15%'}} placeholder="库存"/>
                              </Form.Item>
                            </Input.Group>
                          </Form.Item>

                      ))}
                    </>
                );
              }}

            </Form.List>
            <Form.Item  {...formItemLayoutWith}>
              <Button className="add-product-from-btn" onClick={editProductAtt}
                 loading={proFromBtn.load}     type="primary">{proFromBtn.content}</Button>
              <Button className="add-product-from-btn"
                      onClick={() => history.push(
                          '/products/product')}>返回</Button>
            </Form.Item>
          </Form>
        </Card>
      </>
  )
}

export default ProductAttributes