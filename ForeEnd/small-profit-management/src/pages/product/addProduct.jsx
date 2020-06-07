import React, {useEffect, useState} from "react";
import {
  Button,
  Card,
  Col,
  DatePicker,
  Form,
  Input,
  Modal, PageHeader,
  Row,
  Select,
  Table
} from "antd";
import {PAGINATION, TIME_FORMAT} from "../../config/sysConfig";
import {useHistory,useParams,useLocation} from "react-router-dom";
import UserOutlined from "@ant-design/icons/lib/icons/UserOutlined";
import {LockOutlined} from "@ant-design/icons";
import MailOutlined from "@ant-design/icons/lib/icons/MailOutlined";
import TabletOutlined from "@ant-design/icons/lib/icons/TabletOutlined";
import AccountBookOutlined
  from "@ant-design/icons/lib/icons/AccountBookOutlined";


const AddProduct=()=>{
  const history = useHistory()
  //获取路由传过来的值
  const {productId}=useLocation().state
  const [form] = Form.useForm();
  const formItemLayout = {
    labelCol: {
      xs: { span: 24 },
      sm: { span: 4 },
    },
    wrapperCol: {
      xs: { span: 24 },
      sm: { span: 12 },
    },
  };

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="添加商品"
        />
        <Card>
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
                     prefix={<AccountBookOutlined />}
                     maxLength={30} placeholder="请输入商品名称"/>
            </Form.Item>
            <Form.Item
                name="productPrice"
                label="默认价格"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入几个 1-6位',
                  min: 1,
                  max: 6
                },
                  {pattern: /^[1-9]d*.d*|0.d*[1-9]d*$/, message: '请输入正确格式的价格'},]}
            >
              <Input
                  prefix="￥" suffix="元"
                  placeholder="请输入价格"
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
            <Form.Item
                name="productPrice"
                label="商品属性"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入几个 1-6位',
                  min: 1,
                  max: 6
                },
                  {pattern: /^[1-9]d*.d*|0.d*[1-9]d*$/, message: '请输入正确格式的价格'},]}
            >
              <Input
                  prefix="￥" suffix="元"
                  placeholder="请输入价格"
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
          </Form>
        </Card>
      </>
  )
}

export default AddProduct