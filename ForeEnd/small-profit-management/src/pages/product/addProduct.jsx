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
import {useHistory,useParams} from "react-router-dom";

const {Search} = Input;

const AddProduct=()=>{
  const history = useHistory()
  let id= useParams();
  console.log(id)
  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="添加商品"
        />
        <Card>

        </Card>
      </>
  )
}

export default AddProduct