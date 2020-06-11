import React, {useEffect, useRef, useState} from "react";
import {
  Button,
  Card, Cascader, Col,
  Form,
  Input, message,
  Modal, PageHeader, Progress,
  Row,
  Select, Space, Steps,
  Table, Upload
} from "antd";
import {PRODUCT_ATTRIBUTES} from "../../config/sysConfig";
import {useHistory, useParams, useLocation} from "react-router-dom";
import {
  MinusCircleOutlined,
  AccountBookOutlined,
  PlusOutlined
} from '@ant-design/icons'
import * as indexAPI from "../../api/page";
import './addProduct.less'
import ImgCrop from 'antd-img-crop';
import 'react-draft-wysiwyg/dist/react-draft-wysiwyg.css'
import 'antd/es/modal/style';
import 'antd/es/slider/style';
import ProductEditor from "./productEditor";
import InboxOutlined from "@ant-design/icons/lib/icons/InboxOutlined";
import *as Utils from '../../utils/utils'

const {Option} = Select;
const {Step} = Steps;

const AddProduct = () => {
  const history = useHistory()
  //获取路由传过来的值
  let {productDetail} = useLocation().state
  const [isSteps, setIsSteps] = useState(false);
  const [imgFileList, setImgFileList] = useState([]);
  const [videoFileList, setVideoFileList] = useState([]);
  const [proFromBtn, setProFromBtn] = useState({
    content: '确定',
    isAtt: false
  });
  const [imgPreview, setImgPreview] = useState({
    visible: false,
    title: '',
    imageSrc: null,
  });
  const [productCategory, setProductCategory] = useState([]);
  const [form] = Form.useForm();
  const productIntRef = useRef()
  const productAftRef = useRef()
  const productParRef = useRef()

  //图片裁剪参数
  const propsCrop = {
    aspect: 500 / 500, //	裁切区域宽高比，width / height
    modalTitle: "上传图片", //弹窗标题
    modalWidth: 600, //弹窗宽度
    grid: true, //显示裁切区域网格（九宫格）
    zoom: true, //	启用图片缩放
    rotate: true,//启用图片旋转
  };
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
      sm: {span: 12, offset: 4},
    },
  };
  //渲染商品属性列表
  const getProductAttOption = () => {
    const roleOption = []
    PRODUCT_ATTRIBUTES.map(item => {
      roleOption.push((<Option key={item.value}>{item.title}</Option>));
    })
    return roleOption
  }
  //添加商品
  const addProduct = () => {
    /* form.setFieldsValue({
       productAttributes: [
         {
           detailed: ["sdfsd", "sdfsdf", "aaaaaa"],
           name: "1"
         }, {
           detailed: ["速度还是大", "dsfsd", "sssssss"],
           name: "4"
         }, {
           detailed: ["sdfsd", "速度还是大", "fffff"],
           name: "5"
         }
       ],
       productCategory: ["1", "hangzhou", "xihu"]
     })*/
    form.validateFields().then(values => {
      // console.log(productIntRef.current.getDetailHtml())
      console.log(values)

    })
  }
  //获取商品详情
  const getProductCategory = () => {
    indexAPI.getProductCategory().then(res => {
      if (res.success) {
        setProductCategory(res.objectReturn.object)
      }
    })
  }
  //回显商品基本信息
  const setProduct=()=>{
    if (!productDetail){
     return  productDetail={
        productDescription:null,
        productAfterSale:null,
        productParameter:null
      }
    }
    // productAttributes: [
    //   {
    //     detailed: ["sdfsd", "sdfsdf", "aaaaaa"],
    //     name: "1"
    //   }, {
    //     detailed: ["速度还是大", "dsfsd", "sssssss"],
    //     name: "4"
    //   }, {
    //     detailed: ["sdfsd", "速度还是大", "fffff"],
    //     name: "5"
    //   }
    // ],
    const productAttList=[];
    Object.keys(productDetail).map((item)=>{
      PRODUCT_ATTRIBUTES.some((att)=>{
        if (att.value===item){
           const attConList=[]
          productDetail[item].map((content)=>{
            attConList.push(content.attributeContent)
          })
          console.log(attConList)
          const Att={
            name:item,
            detailed:attConList
          }
          productAttList.push(Att)
          return true;
        }
      })
    })
    const imgList=[];
    productDetail.imageSite.map((item,index)=>{
      let img={
        uid: index,
        name: 'image.png',
        status: 'done',
        url: item,
      }
      imgList.push(img)
    })
    setImgFileList(imgList);
    const prodCatList=[]
    prodCatList.push(productDetail.productClassify.productPrimaryId)
    prodCatList.push(productDetail.productClassify.productSecondaryId)
    prodCatList.push(productDetail.productClassify.productFinalId)
    setVideoFileList([{
      uid: '-1',
      name: 'image.png',
      status: 'done',
      url: productDetail.video,
    }])
    form.setFieldsValue({
      productAttributes:productAttList,
      productCategory:prodCatList,
      productName:productDetail.productName,
      productPrice:productDetail.productPrice,
      productWeight:productDetail.weights,
    })
  }

  const onChangeImg = ({fileList: newFileList}) => {
    console.log(newFileList)
    setImgFileList(newFileList);
  };
  const onChangeVideo = ({fileList: newFileList}) => {
    console.log(newFileList)
    setVideoFileList(newFileList);
  };

  //商品图片预览
  const onPreview = async file => {
    setImgPreview({
      title: file.name,
      visible: true,
      imageSrc: URL.createObjectURL(file.originFileObj)
    })
  };

  //商品分类搜索
  const filterCategory = (inputValue, path) => {
    return path.some(
        option => option.label.toLowerCase().indexOf(inputValue.toLowerCase())
            > -1);
  }

  const fileUpload = (file) => {
    return true;
    // Utils.fileUpload(file).then(res =>console.log(res));
    // console.log(file)
  }

  useEffect(() => {
    setProduct();
    getProductCategory();
    return () => {
    }
  }, [])

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/products/product')}
            title="添加商品"
        />
        <Card>
          {isSteps ? (<Row justify="center" gutter={[0, 30]}>
            <Col xs={24} sm={24} md={14} lg={14} xl={14}>
              <Steps className="add-product-steps">
                <Step title="基本信息" description="填写商品基本信息"/>
                <Step title="商品属性" description="设置商品属性之间的价格库存"/>
              </Steps>
            </Col>
          </Row>) : null
          }
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
                  }]}
            >
              <Input allowClear={true}
                     prefix={<AccountBookOutlined/>}
                     maxLength={30} placeholder="请输入商品名称"/>
            </Form.Item>
            <Form.Item
                name="productPrice"
                label="默认价格"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入价格 1-6位 小数点后两位',
                  min: 1,
                  max: 8
                },
                  {
                    pattern: /((^[1-9]\d*)|^0)(\.\d{0,2}){0,1}$/,
                    message: '请输入正确格式的价格'
                  },]}
            >
              <Input
                  type="number"
                  prefix="￥" suffix="元"
                  placeholder="请输入价格  ( 在商品属性无价格时生效 )"
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
            <Form.Item
                name="productWeight"
                label="重量"
                rules={[{
                  required: true,
                  whitespace: true,
                  message: '请输入重量 1-6位',
                  min: 1,
                  max: 6
                },
                  {
                    pattern: /((^[1-9]\d*)|^0)(\.\d{0,2}){0,1}$/,
                    message: '请输入正确格式的重量'
                  },]}
            >
              <Input
                  type="number"
                  suffix="kg"
                  placeholder="请输入商品重量"
                  allowClear={true}
                  maxLength={6}
              />
            </Form.Item>
            <Form.Item
                name="productCategory"
                label="商品分类"
                rules={[{
                  required: true,
                  message: '请选择商品分类'
                }]}
            >
              <Cascader options={productCategory} fieldNames={{ label: 'categoryContent', value: 'categoryId', children: 'children' }} showSearch={{filterCategory}}
                        placeholder="请选择分类"/>
            </Form.Item>
            <Form.List name="productAttributes">
              {(fields, {add, remove}) => {
                return (
                    <>
                      {fields.map((field, index) => (
                          <Form.Item
                              key={index}
                              {...(index === 0 ? formItemLayout
                                  : formItemLayoutWithOutLabel)}
                              label={index === 0 ? '商品属性' : ''}
                          >
                            <Input.Group compact>
                              <Form.Item
                                  name={[field.name, 'name']}
                                  fieldKey={[field.fieldKey, 'name']}
                                  noStyle
                                  rules={[{
                                    required: true,
                                    message: '请选择商品属性',
                                  }]}
                              >
                                <Select placeholder="请选择商品属性"
                                        style={{width: '25%'}}>
                                  {getProductAttOption()}
                                </Select>
                              </Form.Item>
                              <Form.Item
                                  name={[field.name, 'detailed']}
                                  noStyle
                              >
                                <Select mode="tags" style={{width: '68%'}}
                                        placeholder="请输入商品具体属性 (可多选)">

                                </Select>
                              </Form.Item>
                              <Form.Item noStyle>
                                <MinusCircleOutlined
                                    className="dynamic-delete-button"
                                    onClick={() => {
                                      remove(field.name);
                                      if (fields.length === 1) {
                                        setIsSteps(false)
                                        setProFromBtn({
                                          content: '确定',
                                          isAtt: false,
                                        })
                                      }
                                    }}
                                />
                              </Form.Item>
                            </Input.Group>
                          </Form.Item>

                      ))}
                      <Form.Item  {...formItemLayoutWithOutLabel}>
                        {fields.length < 7 ? (
                            <Button
                                type="dashed"
                                onClick={() => {
                                  setIsSteps(true);
                                  setProFromBtn({
                                    content: '下一步',
                                    isAtt: true,
                                  })
                                  add();
                                }}
                                className="add-product-Att-button"
                            >
                              <PlusOutlined/> 添加商品属性
                            </Button>
                        ) : null}
                      </Form.Item>
                    </>
                );
              }}
            </Form.List>
            <Form.Item label="商品图片">
              <ImgCrop {...propsCrop}>
                <Upload
                    // customRequest={(file) => {
                    //   // fileUpload(file.file);
                    // }}
                    action="https://www.mocky.io/v2/5cc8019d300000980a055e76"
                    progress={{
                      strokeWidth: 2,
                      showInfo: false,
                      percent: 99.9,
                      strokeColor: {'0%': '#108ee9', '100%': '#87d068',}
                    }}
                    accept="image/png,image/jpeg"
                    listType="picture-card"
                    fileList={imgFileList}
                    onPreview={onPreview}
                    onChange={onChangeImg}
                >
                  {imgFileList.length < 5 && '+ 选择图片'}
                </Upload>
              </ImgCrop>
              <Modal
                  visible={imgPreview.visible}
                  title={imgPreview.title}
                  footer={null}
                  onCancel={() => {
                    setImgPreview({
                      visible: false,
                      title: null,
                      imageSrc: null,
                    })
                  }}
              >
                <img className="product-preview-img" src={imgPreview.imageSrc}/>
              </Modal>
            </Form.Item>
            <Form.Item label="商品视频" labelCol={{span: 4}}
                       wrapperCol={{span: 8}}>
              <Upload.Dragger
                  progress={
                    <Progress
                        strokeColor={{
                          '0%': '#108ee9',
                          '100%': '#87d068',
                        }}
                        percent={99.9}
                    />
                  }
                  listType="picture"
                  fileList={videoFileList}
                  onChange={onChangeVideo}
              >
                <p className="ant-upload-drag-icon">
                  <InboxOutlined/>
                </p>
                <p className="ant-upload-text">单击或将文件拖到该区域以上传</p>
                <p className="ant-upload-hint">支持单次或批量上传</p>
              </Upload.Dragger>
            </Form.Item>
            <Form.Item name="productIntroduction" labelCol={{span: 4}}
                       wrapperCol={{span: 14}} label="商品介绍">
              <ProductEditor ref={productIntRef}
                             detailHtml={productDetail.productDescription}
              />
            </Form.Item>
            <Form.Item name="productAfterSale" labelCol={{span: 4}}
                       wrapperCol={{span: 14}} label="售后保障" >
              <ProductEditor ref={productAftRef}
                             detailHtml={productDetail.productAfterSale}
              />
            </Form.Item>
            <Form.Item name="productParameter" labelCol={{span: 4}}
                       wrapperCol={{span: 14}} label="商品参数">
              <ProductEditor ref={productParRef}
                             detailHtml={productDetail.productParameter}
              />
            </Form.Item>
            <Form.Item  {...formItemLayoutWithOutLabel}>
              <Button className="add-product-from-btn" onClick={addProduct}
                      type="primary">{proFromBtn.content}</Button>
              <Button className="add-product-from-btn"
                      onClick={() => history.push(
                          '/products/product')}>返回</Button>
            </Form.Item>
          </Form>
        </Card>
      </>
  )
}

export default AddProduct