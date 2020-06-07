import React, {useEffect, useState} from "react";
import {
  useHistory
} from 'react-router-dom'
import {
  Button,
  Card,
  Col,
  DatePicker,
  Form,
  Input,
  Modal,
  Row,
  Select,
  Table
} from "antd";
import {PAGINATION, TIME_FORMAT} from "../../config/sysConfig";

const {Search} = Input;

const Product = () => {
  const history = useHistory();
  const [ss,setSS]=useState(false)
  const columns = [
    {
      title: '商品 ID',
      dataIndex: 'id'
    }, {
      title: '商品名称',
      dataIndex: 'name'
    }, {
      title: '所属分类',
      dataIndex: 'name'
    }, {
      title: '价格',
      dataIndex: 'name'
    }, {
      title: '预览',
      dataIndex: 'auth_name'
    },
    {
      title: '操作',
      fixed: 'right',
      width: 100,
      render: (role) => {
        return (
            <>
              <a onClick={() => {

              }}>编辑商品</a>
              <a onClick={() => {

              }}>下架</a>
            </>
        )
      },
    },
  ]

  const title = (
      <Row gutter={16}>
        <Col xs={24} sm={9} md={6} lg={6} xl={4}>
          <DatePicker.RangePicker/>
        </Col>
        <Col xs={24} sm={15} md={9} lg={9} xl={9}>
          <Search
              placeholder="请输入商品名"
              onSearch={value => console.log(value)}
          />
        </Col>
        <Col xs={24} sm={24} md={9} lg={9} xl={11}>
          <Button type='primary' onClick={() => {
            history.push({pathname: `/products/product/addProduct`})
          }}>添加商品</Button>
        </Col>
      </Row>
  )

  return (
      <>
        <Card title={title}>
          <Table
              bordered
              rowKey={(item) => item._id}
              // dataSource={}
              columns={columns}
              pagination={{
                defaultPageSize: PAGINATION.PAGE_SIZE,
                total: 4,
                showTotal: PAGINATION.SHOW_TOTAL,
                showSizeChanger: true,
                showQuickJumper: true,
                pageSizeOptions: PAGINATION.PAGE_SIZE_OPTIONS
              }}
          />
        </Card>
      </>
  )
}

export default Product