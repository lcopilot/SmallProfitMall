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


const ProductDetail=()=>{
  const history = useHistory()
  //获取路由传过来的值
  let {id,name}=useLocation().state
  console.log(id+name)
  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="商品详情"
        />
        <Card>

        </Card>
      </>
  )
}

export default ProductDetail