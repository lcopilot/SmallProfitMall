import React, {useEffect, useState} from "react";
import {
  Link,
  useHistory
} from 'react-router-dom'
import {
  Button,
  Card,
  Col,
  DatePicker, Dropdown,
  Form,
  Input, Menu, message,
  Modal,
  Row,
  Select, Skeleton,
  Table
} from "antd";
import {PAGINATION} from "../../config/sysConfig";
import './product.less'
import *as indexAPI from '../../api/page/index'
import storageUtils from "../../utils/storageUtils";
import DownOutlined from "@ant-design/icons/lib/icons/DownOutlined";
import * as ActionCreators from "../../store/actionCreators";
import {connect} from "react-redux";
import {ExclamationCircleOutlined} from "@ant-design/icons";

const {Search} = Input;
const {confirm} = Modal;
const Product = (props) => {
  let {setProductAttributes} = props
  const history = useHistory();
  const [productList, setProductList] = useState([])
  const [productPagination, setProductPagination] = useState({
    currentPage: PAGINATION.defaultCurrent,
    pageSize: PAGINATION.defaultPageSize,
  })
  const [skeletonLoad, setSkeletonLoad] = useState(true)

  const columns = [
    {
      title: '商品 ID',
      dataIndex: 'productId',
      width: 100
    }, {
      title: '商品名称',
      dataIndex: 'productName'
    }, {
      title: '所属分类',
      width: 110,
      render: (product, record, index) => {
        return (
            <span className="product-table-classify" onClick={() => {
              history.push({
                pathname: `/products/category`,
                state: {classifyId: product.classifyId}
              })
            }}>{product.productClassify.finalContent}</span>
        )
      }
    }, {
      title: '价格',
      dataIndex: 'productPrice',
      width: 130,
      render: (price) => {
        return (
            `￥ ${price.toFixed(2)}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        )
      },
    }, {
      title: '预览',
      dataIndex: 'imageSite',
      width: 100,
      render: (img) => {
        return (
            <img src={img[0]} className="product-table-img"/>
        )
      },
    }, {
      title: '状态',
      dataIndex: 'productState',
      render: (productState) => productState ? '已上架' : '已下架',
      width: 90,
    },
    {
      title: '操作',
      fixed: 'right',
      width: '10rem',
      render: (product, record, index) => {
        const menu = (
            <Menu>
              <Menu.Item>
                <a onClick={() => {
                  history.push({
                    pathname: `/products/product/addUpProduct`,
                    state: {productDetail: product}
                  })
                }}>
                  编辑基本信息
                </a>
              </Menu.Item>
              <Menu.Item>
                <a onClick={() => {
                  history.push({
                    pathname: `/products/product/productAttributes`,
                    state: {productDetail: product}
                  })
                }}>
                  编辑配置库存
                </a>
              </Menu.Item>
              <Menu.Item>
                <a onClick={() => {
                  putProduct(product, index)
                }}>
                  {product.productState ? '下架' : '上架'}
                </a>
              </Menu.Item>
              <Menu.Item>
                <a onClick={() => {
                  removeProduct(product)
                }}>
                  删除
                </a>
              </Menu.Item>
            </Menu>
        );
        return (
            <>
              <Dropdown overlay={menu} placement="bottomLeft">
                <Button>编辑<DownOutlined/></Button>
              </Dropdown>
            </>
        )
      },
    },
  ]

  //获取商品属性列表
  const getProductAttributes = () => {
    indexAPI.getProductAttributes().then(res => {
      if (res.success) {
        setProductAttributes(res.results.data)
      }
    })
  }
  //获取商品
  const getProductList = (currentPage, pageSize) => {
    const pagination = storageUtils.getProductPagination()
    if(!currentPage){
      currentPage = pagination ? pagination.currentPage
          : PAGINATION.defaultCurrent
    }
    if (!pageSize){
      pageSize = pagination ? pagination.pageSize : PAGINATION.defaultPageSize
    }
    setProductPagination({
      currentPage: currentPage,
      pageSize: pageSize,
    })
    indexAPI.getProductList(pagination ? pagination : productPagination).then(
        res => {
          if (res.success) {
            setProductList(res.pagination)
            setSkeletonLoad(false)
          }
        })
  }
  //商品上架下架
  const putProduct = (product, index) => {
    const {productId, shelves, productState} = product
    if (!productState && !shelves) {
      return message.warn("请先设置商品属性价格,不能为0!")
    }
    const data={
      productId,
      state:!productState
    }
    indexAPI.putProduct(data).then(res => {
      if (res.success) {
        message.warn(`商品已${productState?'下架':'上架'}`)
        const productLists =JSON.parse(JSON.stringify(productList))
        productLists.list[index].productState = !productState
        setProductList(productLists)
      }
    })
  }
  //删除商品
  const removeProduct = (product) => {
    confirm({
      title: '删除商品',
      icon: <ExclamationCircleOutlined/>,
      content: '你确定删除商品吗?',
      cancelText: '取消',
      okText: '确定',
      onOk() {
        let {productId}=product
        indexAPI.removeProduct({productId}).then(res => {
          if (res.success){
            if (productPagination.currentPage!==1 && productPagination.currentPage===productList.totalPage && (((productPagination.currentPage-1)*productPagination.pageSize)+1)===productList.totalCount){
              const pagination = storageUtils.getProductPagination()
              storageUtils.setProductPagination(pagination.currentPage-1,pagination.pageSize);
              getProductList()
            }else {
              getProductList()
            }
          }
        })
      },
    });

  }

  useEffect(() => {
    getProductList()
    getProductAttributes();
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
                placeholder="请输入商品名"
                onSearch={value => console.log(value)}
            />
          </Col>
          <Col xs={24} sm={24} md={9} lg={9} xl={11}>
            <Button type='primary' onClick={() => {
              history.push(
                  {pathname: `/products/product/addUpProduct`, state: {}})
            }}>添加商品</Button>
          </Col>
        </Row>
      </Skeleton>
  )

  return (
      <>
        <Card title={title} loading={skeletonLoad}>
          <Table
              bordered
              rowKey={(item) => item.productId}
              dataSource={productList.list}
              columns={columns}
              pagination={{
                onShowSizeChange: (page, pageSize) => {
                  storageUtils.setProductPagination(page, pageSize);
                  setSkeletonLoad(true)
                  getProductList(page, pageSize)
                },
                onChange: (current, size) => {
                  storageUtils.setProductPagination(current, size);
                  setSkeletonLoad(true)
                  getProductList(current, size)
                },
                current: productPagination.currentPage,
                pageSize: productPagination.pageSize,
                total: productList.totalCount,
                ...PAGINATION
              }}
          />
        </Card>
      </>
  )
}
const dispatchToProps = (dispatch) => {
  return {
    setProductAttributes(data) {
      dispatch(ActionCreators.setProductAttributes(data))
    }
  }
}
export default connect(null, dispatchToProps)(Product)