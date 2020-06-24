import {useHistory, useLocation} from "react-router-dom";
import {
  Avatar,
  Card,
  Col,
  Descriptions, List,
  PageHeader,
  Row,
  Steps,
  Table, Tooltip,
  Typography
} from "antd";
import React from "react";
import FieldTimeOutlined from "@ant-design/icons/lib/icons/FieldTimeOutlined";
import moment from "moment";
import {TIME_FORMAT} from "../../config/sysConfig";

const {Paragraph} = Typography;

const OrderDetail = () => {
  const history = useHistory()
  let {orderDetail} = useLocation().state
  console.log(orderDetail)
  const {orderId, deliveryTime, paymentTime, orderTotal,userName,userId,productContents} = orderDetail
  const {name,phone,areas,detailedAddress,email} = orderDetail.orderAddress
  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/order')}
            title="订单详情"
        />
        <Card>
          <Descriptions column={2}>
            <Descriptions.Item label="订单号">
              <Paragraph copyable>{orderId}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="创建时间">
              {moment(deliveryTime).format(TIME_FORMAT)}
            </Descriptions.Item>
            <Descriptions.Item label="支付时间">
              {moment(paymentTime).format(TIME_FORMAT)}
            </Descriptions.Item>
            <Descriptions.Item label="总价">
              {`￥ ${orderTotal.toFixed(2)}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}
            </Descriptions.Item>
            <Descriptions.Item label="所属用户">
              <Paragraph copyable>{userName}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="所属用户ID">
              <Paragraph copyable>{userId}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="地址">
              <Paragraph ellipsis>姓名: {name}</Paragraph>
              <Paragraph ellipsis>电话: {phone}</Paragraph>
              <Paragraph ellipsis>地址: {areas + detailedAddress}</Paragraph>
              <Paragraph ellipsis>邮件: {email}</Paragraph>
            </Descriptions.Item>
          </Descriptions>
          <List
              itemLayout="vertical"
              size="large"
              dataSource={productContents}
              footer={
                <div>
                  <b>ant design</b> footer part
                </div>
              }
              renderItem={item => (
                  <List.Item
                      key={item.title}
                      extra={
                        <img
                            width={272}
                            alt="logo"
                            src="https://gw.alipayobjects.com/zos/rmsportal/mqaQswcyDLcXyDKnZfES.png"
                        />
                      }
                  >
                    <List.Item.Meta
                        avatar={<Avatar src={item.avatar} />}
                        title={<a href={item.href}>{item.title}</a>}
                        description={item.description}
                    />
                    {item.content}
                  </List.Item>)}
          />
        </Card>
      </>
  )

}

export default OrderDetail