import React, {useEffect, useState} from "react";
import {
  Button,
  Card, Col,
  Form,
  Input, message,
  Modal, PageHeader,
  Row,
  Select, Space, Steps,
  Table
} from "antd";
import {PRODUCT_ATTRIBUTES} from "../../config/sysConfig";
import {useHistory, useParams, useLocation} from "react-router-dom";
import {
  MinusCircleOutlined,
  AccountBookOutlined,
  PlusOutlined
} from '@ant-design/icons'
import * as indexAPI from "../../api/page";
import './addProduct.less'

const {Option} = Select;
const { Step } = Steps;

const AddProduct = () => {
  const history = useHistory()
  //获取路由传过来的值
  const {productId} = useLocation().state
  const [isSteps,setIsSteps] = useState(false);
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
      sm: {span: 12, offset: 4},
    },
  };
  const getProductAttOption = () => {
    const roleOption = []
    PRODUCT_ATTRIBUTES.map(item => {
      roleOption.push((<Option key={item.value}>{item.title}</Option>));
    })
    return roleOption
  }
  const ss = () => {
    form.validateFields().then(values => {
      console.log(values)
    })
  }

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="添加商品"
        />

        <Card>
          {isSteps? (<Row justify="center" gutter={[0,20]}>
            <Col xs={24} sm={24} md={14} lg={14} xl={14}>
              <Steps className="add-product-steps">
                <Step title="基本信息" description="填写商品基本信息" />
                <Step title="商品属性" description="设置商品属性之间的价格库存" />
              </Steps>
            </Col>
          </Row>):null
          }

          <Form
              form={form}
              {...formItemLayout}
              initialValues={{remember: true}}
          >
            <Form.Item
                name="productName"
                label="商品名"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入商品名 3-30位',
                  min: 3,
                  max: 30
                },
                  {
                    pattern: /^[\u4e00-\u9fa50-9a-zA-Z   ]+$/,
                    message: '商品名必须是中,英文数字或空格组成'
                  },]}
            >
              <Input allowClear={true}
                     prefix={<AccountBookOutlined/>}
                     maxLength={30} placeholder="请输入商品名称"/>
            </Form.Item>
            <Form.Item
                name="productPrice"
                label="默认价格"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入价格个 1-6位 小数点后两位',
                  min: 1,
                  max: 8
                },
                  {
                    pattern: /((^[1-9]\d*)|^0)(\.\d{0,2}){0,1}$/,
                    message: '请输入正确格式的价格'
                  },]}
            >
              <Input
                  prefix="￥" suffix="元"
                  placeholder="请输入价格 "
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
            <Form.Item
                name="productWeight"
                label="重量"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入重量 1-6位',
                  min: 1,
                  max: 6
                },
                  {
                    pattern: /((^[1-9]\d*)|^0)(\.\d{0,2}){0,1}$/,
                    message: '请输入正确格式的重量'
                  },]}
            >
              <Input
                  suffix="kg"
                  placeholder="请输入商品重量"
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
            <Form.List name="productAttributes">
              {(fields, {add, remove}) => {
                return (
                    <>
                      {fields.map((field, index) => (
                          <Form.Item
                              key={index}
                              {...(index === 0 ? formItemLayout
                                  : formItemLayoutWithOutLabel)}
                              label={index === 0 ? '商品属性' : ''}
                          >
                            <Input.Group compact>
                              <Form.Item
                                  name={[field.name, 'name']}
                                  fieldKey={[field.fieldKey, 'name']}
                                  noStyle
                                  rules={[{
                                    required: true,
                                    whitespace: true,
                                    message: '请选择商品属性',
                                  }]}
                              >
                                <Select placeholder="请选择商品属性"
                                        style={{width: '25%'}}>
                                  {getProductAttOption()}
                                </Select>
                              </Form.Item>
                              <Form.Item
                                  name={[field.name, 'detailed']}
                                  noStyle
                              >
                                <Select mode="tags" style={{width: '68%'}}
                                        placeholder="请输入商品具体属性 (可多选)">

                                </Select>
                              </Form.Item>
                              <Form.Item {...field} noStyle>
                                <MinusCircleOutlined
                                    className="dynamic-delete-button"
                                    style={{margin: '0 8px'}}
                                    onClick={() => {
                                      remove(field.name);
                                      setIsSteps(fields.length !== 1)
                                    }}
                                />
                              </Form.Item>
                            </Input.Group>
                          </Form.Item>

                      ))}
                      <Form.Item  {...formItemLayoutWithOutLabel}>
                        {fields.length < 7 ? (
                            <Button
                                type="dashed"
                                onClick={() => {
                                  setIsSteps(true);
                                  add();
                                }}
                                className="add-product-Att-button"
                            >
                              <PlusOutlined/> 添加商品属性
                            </Button>
                        ) : null}
                      </Form.Item>
                    </>
                );
              }}
            </Form.List>
            <Form.Item>

            </Form.Item>
            <Button onClick={ss}>确定</Button>
          </Form>
        </Card>
      </>
  )
}

export default AddProduct