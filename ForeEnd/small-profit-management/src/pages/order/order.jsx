import React, {useEffect, useState} from "react";
import {
  Button,
  Card,
  Col,
  DatePicker,
  Dropdown, Input,
  Menu,
  Row,
  Skeleton,
  Table
} from "antd";
import storageUtils from "../../utils/storageUtils";
import {PAGINATION} from "../../config/sysConfig";
import {useHistory} from "react-router-dom";
import DownOutlined from "@ant-design/icons/lib/icons/DownOutlined";
import * as indexAPI from "../../api/page";

const {Search} = Input;

const Order=()=>{
  const history= useHistory();
  const [orderList, setOrderList] = useState([])
  const [orderPagination, setOrderPagination] = useState({
    currentPage:PAGINATION.defaultCurrent,
    pageSize:PAGINATION.defaultPageSize,
  })
  const [skeletonLoad, setSkeletonLoad] = useState(true)

  const columns = [
    {
      title: '订单号',
      dataIndex: 'orderId',
      width:100
    }, {
      title: '时间',
      dataIndex: 'productName'
    }, {
      title: '地址',
      width:110,
      render: (product,record,index) => {
        return (
            <span className="product-table-classify" onClick={()=>{
              history.push({pathname:`/products/category`,state:{classifyId:product.classifyId}})
            }}>{product.productClassify.finalContent}</span>
        )
      }
    }, {
      title: '总价',
      dataIndex: 'productPrice',
      render: (productPrice) => {
        return (
            productPrice.toFixed(2)
        )
      },
    },{
      title: '订单所属用户',
      dataIndex: 'productPrice',
      render: (productPrice) => {
        return (
            productPrice.toFixed(2)
        )
      },
    },
    {
      title: '操作',
      fixed: 'right',
      width: '10rem',
      render: (order,record,index) => {
        const menu = (
            <Menu>
              <Menu.Item>
                <a onClick={() => {
                  history.push({pathname:`/products/product/addUpProduct`,state:{orderDetail:order}})
                }}>
                  查看订单
                </a>
              </Menu.Item>
              <Menu.Item>
                <a onClick={() => {
                  history.push({pathname:`/products/product/productAttributes`,state:{orderDetail:order}})
                }}>
                  订单封禁
                </a>
              </Menu.Item>
            </Menu>
        );
        return (
            <>
              <Dropdown overlay={menu} placement="bottomLeft">
                <Button>操作<DownOutlined /></Button>
              </Dropdown>
            </>
        )
      },
    },
  ]

  //获取商品
  const getOrderList=(currentPage,pageSize)=>{
    if (!currentPage && !pageSize){
      const pagination=storageUtils.getOrderPagination()
      currentPage=pagination?pagination.current:PAGINATION.defaultCurrent
      pageSize=pagination?pagination.pageSize:PAGINATION.defaultPageSize
    }
    setOrderPagination({
      currentPage:currentPage,
      pageSize:pageSize,
    })
    indexAPI.getProductList(orderPagination).then(res=>{
      if (res.success){
        setOrderList(res.pagination)
        setSkeletonLoad(false)
      }
    })
  }

  useEffect(()=>{
    getOrderList()
    return ()=>{}
  },[])

  const title = (
      <Skeleton  active loading={skeletonLoad}>
        <Row gutter={16}>
          <Col xs={24} sm={9} md={6} lg={6} xl={4}>
            <DatePicker.RangePicker/>
          </Col>
          <Col xs={24} sm={15} md={9} lg={9} xl={9}>
            <Search
                enterButton
                placeholder="请输入订单号"
                onSearch={value => console.log(value)}
            />
          </Col>
          <Col xs={24} sm={24} md={9} lg={9} xl={11}>
            <Button type='primary' onClick={() => {

            }}>导出订单数据</Button>
          </Col>
        </Row>
      </Skeleton>
  )

  return (
      <>
        <Card title={title}>
          <Skeleton  active loading={skeletonLoad}>
            <Table
                bordered
                rowKey={(item) => item.productId}
                dataSource={orderList.list}
                columns={columns}
                pagination={{
                  onShowSizeChange:(page,pageSize)=>{
                    storageUtils.setOrderPagination(page,pageSize);
                    setSkeletonLoad(true)
                    getOrderList(page,pageSize)
                  },
                  onChange:(current,size)=>{
                    storageUtils.setOrderPagination(current,size);
                    setSkeletonLoad(true)
                    getOrderList(current,size)
                  },
                  current:orderPagination.currentPage,
                  pageSize: orderPagination.pageSize,
                  total: orderList.totalCount,
                  ...PAGINATION
                }}
            />
          </Skeleton>
        </Card>
      </>
  )
}

export default Order