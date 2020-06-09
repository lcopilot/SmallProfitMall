import React, {useEffect, useState} from "react";
import {
  Link,
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
  Select, Skeleton,
  Table
} from "antd";
import {PAGINATION, TIME_FORMAT} from "../../config/sysConfig";
import './product.less'
import *as indexAPI from '../../api/page/index'
import moment from "moment";
import storageUtils from "../../utils/storageUtils";

const {Search} = Input;

const Product = () => {
  const history= useHistory();
  const [productList, setProductList] = useState([])
  const [productPagination, setProductPagination] = useState({
    currentPage:PAGINATION.defaultCurrent,
    pageSize:PAGINATION.defaultPageSize,
  })
  const [skeletonLoad, setSkeletonLoad] = useState(true)

  const columns = [
    {
      title: '商品 ID',
      dataIndex: 'productId',
      width:100
    }, {
      title: '商品名称',
      dataIndex: 'productName'
    }, {
      title: '所属分类',
      width:110,
      render: (product,record,index) => {
        return (
            <span className="product-table-classify" onClick={()=>{
              history.push({pathname:`/products/category`,state:{classifyId:product.classifyId}})
            }}>{product.productClassify}</span>
        )
      }
    }, {
      title: '价格',
      dataIndex: 'productPrice',
      render: (productPrice) => {
        return (
            productPrice.toFixed(2)
        )
      },
    }, {
      title: '预览',
      dataIndex: 'productPicture',
      render: (img) => {
        return (
              <img src={img} className="product-table-img" />
        )
      },
    },
    {
      title: '操作',
      fixed: 'right',
      width: '10rem',
      render: (product,record,index) => {
        return (
            <>
              <a onClick={() => {
                history.push({pathname:`/products/product/addProduct`,state:{productId:product.productId}})
              }}>编辑商品</a>
              <a onClick={() => {

              }}>下架</a>
            </>
        )
      },
    },
  ]

  //获取商品
  const getProductList=(currentPage,pageSize)=>{
    if (!currentPage && !pageSize){
      const pagination=storageUtils.getProductPagination()
      currentPage=pagination?pagination.current:PAGINATION.defaultCurrent
      pageSize=pagination?pagination.pageSize:PAGINATION.defaultPageSize
    }
    setProductPagination({
      currentPage:currentPage,
      pageSize:pageSize,
    })
    indexAPI.getProductList(productPagination).then(res=>{
      if (res.success){
        setProductList(res.pagination)
        setSkeletonLoad(false)
      }
    })
  }

  useEffect(()=>{
    getProductList()
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
              placeholder="请输入商品名"
              onSearch={value => console.log(value)}
          />
        </Col>
        <Col xs={24} sm={24} md={9} lg={9} xl={11}>
          <Button type='primary' onClick={() => {
            history.push({pathname:`/products/product/addProduct`,state:{productId:5}})
          }}>添加商品</Button>
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
              dataSource={productList.list}
              columns={columns}
              pagination={{
                onShowSizeChange:(page,pageSize)=>{
                  storageUtils.setProductPagination(page,pageSize);
                  setSkeletonLoad(true)
                  getProductList(page,pageSize)
                },
                onChange:(current,size)=>{
                  storageUtils.setProductPagination(current,size);
                  setSkeletonLoad(true)
                  getProductList(current,size)
                },
                current:productPagination.currentPage,
                pageSize: productPagination.pageSize,
                total: productList.totalCount,
                ...PAGINATION
              }}
          />
         </Skeleton>
        </Card>
      </>
  )
}

export default Product