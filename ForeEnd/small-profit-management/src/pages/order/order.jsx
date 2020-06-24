import React, {useEffect, useState} from "react";
import {
  Button,
  Card,
  Col,
  DatePicker, Descriptions,
  Dropdown, Input,
  Menu,
  Row,
  Skeleton,
  Table, Tooltip, Typography
} from "antd";
import storageUtils from "../../utils/storageUtils";
import {
  EXPORT_EXCEL_NAME,
  PAGINATION,
  TIME_FORMAT
} from "../../config/sysConfig";
import {useHistory} from "react-router-dom";
import DownOutlined from "@ant-design/icons/lib/icons/DownOutlined";
import * as indexAPI from "../../api/page";
import FieldTimeOutlined from "@ant-design/icons/lib/icons/FieldTimeOutlined";
import moment from "moment";
import './order.less'
import * as Utils from "../../utils/utils";

const {Search} = Input;
const {Paragraph} = Typography;

const Order = () => {
  const history = useHistory();
  const [orderList, setOrderList] = useState([])
  const [orderPagination, setOrderPagination] = useState({
    currentPage: PAGINATION.defaultCurrent,
    pageSize: PAGINATION.defaultPageSize,
  })
  const [skeletonLoad, setSkeletonLoad] = useState(true)

  const columns = [
    {
      title: '订单号',
      dataIndex: 'orderId',
      width: 100
    }, {
      title: '创建时间',
      dataIndex: 'orderTime',
      render: (orderTime) => <><FieldTimeOutlined/> {moment(orderTime).format(TIME_FORMAT)}</>
    }, {
      title: '地址',
      width: 250,
      render: (order, record, index) => {
        const {name, phone, areas, detailedAddress,email} = order.orderAddress
        const title =
            (
                <>
                  <div>姓名: {name}</div>
                  <div>电话: {phone}</div>
                  <div>地址: {areas + detailedAddress}</div>
                  <div>邮件: {email}</div>
                </>
            )
        return (
            <Tooltip placement="top" title={title}>
              <Paragraph ellipsis className="order-address">姓名: {name}</Paragraph>
              <Paragraph ellipsis className="order-address">电话: {phone}</Paragraph>
              <Paragraph ellipsis className="order-address">地址: {areas + detailedAddress}</Paragraph>
            </Tooltip>
        )
      }
    }, {
      title: '总价',
      dataIndex: 'orderTotal',
      render: (orderTotal) => {
        return (
            `￥ ${orderTotal.toFixed(2)}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        )
      },
    }, {
      title: '订单所属用户',
      dataIndex: 'userName',
    },
    {
      title: '操作',
      fixed: 'right',
      width: '10rem',
      render: (order, record, index) => {
        const menu = (
            <Menu>
              <Menu.Item>
                <a onClick={() => {
                  history.push({
                    pathname: `/products/product/addUpProduct`,
                    state: {orderDetail: order}
                  })
                }}>
                  查看订单
                </a>
              </Menu.Item>
              <Menu.Item>
                <a onClick={() => {
                  history.push({
                    pathname: `/products/product/productAttributes`,
                    state: {orderDetail: order}
                  })
                }}>
                  订单封禁
                </a>
              </Menu.Item>
            </Menu>
        );
        return (
            <>
              <Dropdown overlay={menu} placement="bottomLeft">
                <Button>操作<DownOutlined/></Button>
              </Dropdown>
            </>
        )
      },
    },
  ]

  //获取订单
  const getOrderList = (currentPage, pageSize) => {
    const pagination = storageUtils.getOrderPagination()
    if (!currentPage) {
      currentPage = pagination ? pagination.currentPage
          : PAGINATION.defaultCurrent
    }
    if (!pageSize) {
      pageSize = pagination ? pagination.pageSize : PAGINATION.defaultPageSize
    }
    setOrderPagination({
      currentPage: currentPage,
      pageSize: pageSize,
    })
    indexAPI.getOrderList(pagination ? pagination : orderPagination).then(res => {
      if (res.success) {
        setOrderList(res.pagination)
        setSkeletonLoad(false)
      }
    })
  }
  //订单数据导出
  const exportExcel=()=>{
    const initColumn = [{
      title: '订单号',
      dataIndex: 'orderId',
      key: 'orderId',
      className: 'text-monospace',
    }, {
      title: '创建时间',
      dataIndex: 'orderTime',
      key: 'orderTime',
    },{
      title: '支付时间',
      dataIndex: 'paymentTime',
      key: 'paymentTime',
    }, {
      title: '总价',
      dataIndex: 'orderTotal',
      key: 'orderTotal',
    }, {
      title: '所属用户',
      dataIndex: 'userName',
      key: 'userName',
    }, {
      title: '地址',
      dataIndex: 'address',
      key: 'address',
    }];
    let attendanceInfoList = [];
    orderList.list.map(item=>{
      const {name, phone, areas, detailedAddress,email} = item.orderAddress
      let detail={
        orderId: item.orderId,
        orderTime: moment(item.orderTime).format(TIME_FORMAT),
        paymentTime:moment(item.paymentTime).format(TIME_FORMAT),
        orderTotal: item.orderTotal.toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ','),
        userName:item.userName,
        address:`姓名:${name}\n电话:${phone}\n地址:${areas+detailedAddress}\n邮件:${email}`
      }
      attendanceInfoList=[...attendanceInfoList,detail]
    })
    Utils.exportExcel(initColumn,attendanceInfoList)
  }

  useEffect(() => {
    getOrderList()
    return () => {
    }
  }, [])

  const title = (
      <Skeleton active loading={skeletonLoad}>
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
              exportExcel()
            }}>导出订单数据</Button>
          </Col>
        </Row>
      </Skeleton>
  )

  return (
      <>
        <Card title={title}>
          <Skeleton active loading={skeletonLoad}>
            <Table
                bordered
                rowKey={(item) => item.orderId}
                dataSource={orderList.list}
                columns={columns}
                pagination={{
                  onShowSizeChange: (page, pageSize) => {
                    storageUtils.setOrderPagination(page, pageSize);
                    setSkeletonLoad(true)
                    getOrderList(page, pageSize)
                  },
                  onChange: (current, size) => {
                    storageUtils.setOrderPagination(current, size);
                    setSkeletonLoad(true)
                    getOrderList(current, size)
                  },
                  current: orderPagination.currentPage,
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