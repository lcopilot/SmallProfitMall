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
  Select,
  Table, Upload
} from "antd";
import {useHistory, useLocation} from "react-router-dom";



const {Option} = Select;

const ProductAttributes=()=>{
  const history = useHistory()
  //获取路由传过来的值
  let {productDetail} = useLocation().state
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
      roleOption.push((<Option key={item.id}>{item.content}</Option>));
    })
    //利用ES6 Set去重（ES6中最常用）
    // Array.from(new Set(roleOption))
    return roleOption
  }

  useEffect(()=>{
    form.setFieldsValue({
      productAttributes: productDetail.productDistinctions,
    })
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
                              key={index}
                              {...(formItemLayoutWithOutLabel)}
                          >
                            <Input.Group compact>
                              {
                                productDetail.productDistinctions[0].versionContent?<Form.Item
                                    name={[field.name, 'versionContent']}
                                    noStyle
                                >
                                  <Select  placeholder="版本">
                                    {getProductAttOption('version')}
                                  </Select>
                                </Form.Item>:<></>
                              }
                              {
                                productDetail.productDistinctions[0].kindContent?<Form.Item
                                    name={[field.name, 'kindContent']}
                                    noStyle
                                >
                                  <Select  placeholder="种类">
                                    {getProductAttOption('kind')}
                                  </Select>
                                </Form.Item>:<></>
                              }
                              {
                                productDetail.productDistinctions[0].tasteContent?<Form.Item
                                    name={[field.name, 'tasteContent']}
                                    noStyle
                                >
                                  <Select   placeholder="口味">
                                    {getProductAttOption('taste')}
                                  </Select>
                                </Form.Item>:<></>
                              } {
                                productDetail.productDistinctions[0].specificationContent? <Form.Item
                                    name={[field.name, 'specificationContent']}
                                    noStyle
                                >
                                  <Select   placeholder="配置">
                                    {getProductAttOption('specification')}
                                  </Select>
                                </Form.Item>:<></>
                              } {
                                productDetail.productDistinctions[0].comboContent? <Form.Item
                                    name={[field.name, 'comboContent']}
                                    noStyle
                                >
                                  <Select  placeholder="套餐">
                                    {getProductAttOption('combo')}
                                  </Select>
                                </Form.Item>:<></>
                              }{
                                productDetail.productDistinctions[0].colourContent?<Form.Item
                                    name={[field.name, 'colourContent']}
                                    noStyle
                                >
                                  <Select   placeholder="颜色">
                                    {getProductAttOption('colour')}
                                  </Select>
                                </Form.Item>:<></>
                              }{
                                productDetail.productDistinctions[0].sizeContent?<Form.Item
                                    name={[field.name, 'sizeContent']}
                                    noStyle
                                >
                                  <Select   placeholder="尺寸">
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
                                <Input type="number" suffix="kg" style={{width: '15%'}} placeholder="库存"/>
                              </Form.Item>
                            </Input.Group>
                          </Form.Item>

                      ))}
                    </>
                );
              }}

            </Form.List>
            <Form.Item  {...formItemLayoutWith}>
              <Button className="add-product-from-btn" onClick={()=>{form.validateFields().then(values => {
                // console.log(productIntRef.current.getDetailHtml())
                console.log(values)
              })}}
                      type="primary">修改</Button>
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