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
import Player from 'griffith'
import {useHistory, useLocation} from "react-router-dom";
import {
  MinusCircleOutlined,
  AccountBookOutlined,
  PlusOutlined
} from '@ant-design/icons'
import * as indexAPI from "../../api/page";
import './addUpProduct.less'
import ImgCrop from 'antd-img-crop';
import 'react-draft-wysiwyg/dist/react-draft-wysiwyg.css'
import 'antd/es/modal/style';
import 'antd/es/slider/style';
import ProductEditor from "./productEditor";
import InboxOutlined from "@ant-design/icons/lib/icons/InboxOutlined";
import *as Utils from '../../utils/utils'
import {connect} from "react-redux";
import * as ActionCreators from "../../store/actionCreators";

const {Option} = Select;
const {Step} = Steps;

const AddUpProduct = (props) => {
  let {productAttributesList} = props
  const history = useHistory()
  //获取路由传过来的值
  let {productDetail} = useLocation().state
  const [isSteps, setIsSteps] = useState(false);
  const [imgFileList, setImgFileList] = useState([]);
  const [imgNameList, setImgNameList] = useState([]);
  const [videoFileList, setVideoFileList] = useState([]);
  const [videoName, setVideoName] = useState(null);
  const [proFromBtn, setProFromBtn] = useState({
    content: '提交',
    isAtt: false,
    load: false,
  });
  //图片视频预览
  const [imgPreview, setImgPreview] = useState({
    visible: false,
    title: '',
    imageSrc: null,
  });
  //商品分类
  const [productCategory, setProductCategory] = useState([]);
  const [optionDisabled, setOptionDisabled] = useState({
    version: false,
    kind: false,
    size: false,
    specification: false,
    colour: false,
    combo: false,
    taste: false,
  });
  const [form] = Form.useForm();
  const productIntRef = useRef()
  const productAftRef = useRef()
  const productParRef = useRef()

  //商品图片上传参数
  const imgUpProps = {
    //进度条
    progress: {
      strokeColor: {
        '0%': '#108ee9',
        '100%': '#87d068',
      },
      strokeWidth: 3,
      format: percent => `${percent}%`,
    },
    //覆盖上传
    customRequest: (options) => {
      return fileUpload(options, false);
    },
    //允许的文件类型
    accept: "image/png,image/jpeg",
    //上传列表的内建样式，支持三种基本样式 text, picture 和 picture-card
    listType: "picture-card",
    //已经上传的文件列表（受控）
    fileList: imgFileList,
    //点击文件链接或预览图标时的回调
    onPreview: (file) => {
      onPreview(file, false)
    },
    //点击移除文件时的回调，返回值为 false 时不移除。支持返回一个 Promise 对象，Promise 对象 resolve(false) 或 reject 时不移除。
    onRemove: (file) => {
      fileRemove(file, false)
    },
    //上传文件改变时的状态
    onChange: (file) => {
      onChangeImg(file)
    },
  }
  //视频上传参数
  const videoUpProps = {
    //进度条
    progress: {
      strokeColor: {
        '0%': '#108ee9',
        '100%': '#87d068',
      },
      strokeWidth: 3,
      // parseFloat(percent.toFixed(2)) 之前使用
      format: percent => `${percent}%`,
    },
    //覆盖上传
    customRequest: (options) => {
      return fileUpload(options, true);
    },
    //允许的文件类型
    accept: "video/mp4,video/x-matroska,.flv,video/avi",
    //上传列表的内建样式，支持三种基本样式 text, picture 和 picture-card
    listType: "picture",
    //已经上传的文件列表（受控）
    fileList: videoFileList,
    //点击文件链接或预览图标时的回调
    onPreview: (file) => {
      onPreview(file, true)
    },
    //点击移除文件时的回调，返回值为 false 时不移除。支持返回一个 Promise 对象，Promise 对象 resolve(false) 或 reject 时不移除。
    onRemove: (file) => {
      fileRemove(file, true)
    },
    //上传文件改变时的状态
    onChange: (file) => {
      onChangeVideo(file)
    },
    //上传文件之前
    beforeUpload: (file) => {
      return beforeUpload(file, true)
    }
  }
  //视频播放器参数
  const propsPlayer = {
    //https://github.com/zhihu/griffith/blob/master/packages/griffith/README-zh-Hans.md
    //自动播放
    autoplay: true,
    //播放器实例唯一标识
    id: "1",
    //初始视频时长。在视频元数据载入后使用实际值
    duration: 123456789,
    //是否启用 standalone 模式
    standalone: false,
    //视频封面图片 URL
    cover: `${imgPreview.imageSrc}?vframe/jpg/offset/2/w/300/h/300`,
    //是否启用 MSE
    useMSE: false,
    sources: {
      hd: {
        // duration:`${imgPreview.imageSrc}?avinfo`.format.duration,
        // format:`${imgPreview.imageSrc}?avinfo`.format.format_name,
        // size:`${imgPreview.imageSrc}?avinfo`.format.size,
        // width:`${imgPreview.imageSrc}?avinfo`.streams[0].width,
        // height:`${imgPreview.imageSrc}?avinfo`.streams[0].height,
        // play_url: imgPreview.imageSrc
        bitrate: 40,
        duration: 40,
        format: 'mp4',
        size: 123,
        width: 500,
        height: 500,
        play_url: imgPreview.imageSrc
      },
    }
  }
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
    console.log(productAttributesList)
    if(!productAttributesList){
      history.push('/products/product')
    }
    productAttributesList.map(item => {
      roleOption.push((<Option key={item.value}
                               disabled={optionDisabled[item.value]}>{item.title}</Option>));
    })
    return roleOption
  }
  //商品属性列表变化
  const onProductAttChange = () => {
    const attList = form.getFieldValue('productAttributes')
    let att = {
      version: false,
      kind: false,
      size: false,
      specification: false,
      colour: false,
      combo: false,
      taste: false,
    }
    attList.map((item) => {
      att[item.name] = true
    })
    setOptionDisabled(att)
  }
  //动态添加表单项
  const addFromItem=(add=()=>{})=>{
    const attList = form.getFieldValue(
        'productAttributes')
    if (attList instanceof Array){
      //attList 判断是否是第一个动态表单 第二个为数组
      // attList 有 undefined 会报错
      let flag=false
      attList.some((item) => {
        if (typeof(item)== 'undefined') {
          return flag=true
        }
      })
      if (flag){
        return message.warn("请有序设置商品属性!")
      }
    }
    setIsSteps(!productDetail);
    setProFromBtn({
      content: productDetail ? '提交' : '下一步',
      isAtt: !productDetail,
    })
    add();
  }
  //添加商品
  const addProductBasic = () => {
    form.validateFields().then(values => {
      const productAttList=[]
      values.productAttributes.map((item)=>{
        productAttributesList.some((att)=>{
          if(att.value===item.name){
            item.detailed.map((content)=>{
              const attributes={
                attributeType:att.attributeTypeId,
                attributeContent:content
              }
              productAttList.push(attributes)
            })
            return att.value===item.name
          }
        })
      })
      const product={
        productName:values.productName,
        productPrice:values.productPrice,
        weight:`${values.productWeight}kg`,
        video:videoName,
        imageSite:imgNameList,
        productClassifyList:values.productCategory,
        productContexts:productAttList,
        productDescription:productIntRef.current.getDetailHtml(),
        productAfterSale:productAftRef.current.getDetailHtml(),
        productParameter:productParRef.current.getDetailHtml(),
      }
      setProFromBtn({
        content: '提交中 . . .',
        isAtt: proFromBtn.isAtt,
        load:true,
      });
      indexAPI.addProductBasic(product).then(res=>{
        console.log(res)
      })
      // if (proFromBtn.isAtt) {
      //   history.push({pathname:'/products/product/productAttributes',state:{isSteps}})
      // }
    })
  }
  //获取商品详情
  const getProductCategory = () => {
    indexAPI.getProductCategory().then(res => {
      if (res.success) {
        setProductCategory(res.results.data)
      }
    })
  }
  //回显商品基本信息
  const setProduct = () => {
    if (!productDetail) {
      return null
    }
    const productAttList = [];
    Object.keys(productDetail).some((item) => {
      productAttributesList.some((att) => {
        if (att.value === item && productDetail[item].length > 0) {
          const attConList = []
          productDetail[item].map((attributes) => {
            console.log(attributes)
            attConList.push(attributes.attributeContent)
          })
          const Att = {
            name: item,
            detailed: attConList
          }
          productAttList.push(Att)
          return true;
        }
      })
      return productAttList.length === 7;
    })
    const imgList = [];
    productDetail.imageSite.map((item, index) => {
      let img = {
        uid: index,
        name: 'image.png',
        status: 'done',
        url: item.trim(),
      }
      imgList.push(img)
    })
    setImgFileList(imgList);
    const prodCatList = []
    prodCatList.push(productDetail.productClassify.productPrimaryId)
    prodCatList.push(productDetail.productClassify.productSecondaryId)
    prodCatList.push(productDetail.productClassify.productFinalId)
    if (productDetail.video) {
      setVideoFileList([{
        uid: '-1',
        name: productDetail.video.split('/')[3],
        status: 'done',
        url: productDetail.video,
      }])
    }
    form.setFieldsValue({
      productAttributes: productAttList,
      productCategory: prodCatList,
      productName: productDetail.productName,
      productPrice: productDetail.productPrice,
      productWeight: productDetail.weights,
    })
  }
  //上传图片改变
  const onChangeImg = ({fileList: newFileList}) => {
    setImgFileList(newFileList);
  };
  //上传视频改变
  const onChangeVideo = ({fileList: newFileList}) => {
    setVideoFileList(newFileList);
  };
  //商品图片视频预览
  const onPreview = (file, isVideo) => {
    setImgPreview({
      isVideo: isVideo,
      title: file.name,
      visible: true,
      imageSrc: file.url ? file.url : URL.createObjectURL(
          file.originFileObj),
    })
  };
  //商品分类搜索
  const filterCategory = (inputValue, path) => {
    return path.some(
        option => option.label.toLowerCase().indexOf(inputValue.toLowerCase())
            > -1);
  }
  //文件上传之前
  const beforeUpload = (file, isVideo) => {
    const FILE_SIZE = file.size / 1024 / 1024;
    if (isVideo) {
      return new Promise((resolve, reject) => {
        if (file.type.split('/')[0] !== 'video' && file.name.split(
            '.')[file.name.split('.').length - 1] !== 'flv') {
          message.warn("请选择视频!")
          reject(false)
        }
        if (FILE_SIZE > 200) {
          message.warn("请上传30MB以下的视频!")
          reject(false)
        }
        if (videoFileList.length >= 1) {
          message.warn("只能上传一个视频!")
          reject(false)
        }
        resolve(true);
      });
    }
    if (FILE_SIZE > 20) {
      message.warn("请上传20MB以下的图片!")
      return false
    }
    if (file.type.split('/')[0] !== 'image') {
      message.warn("请选择图片");
      return false
    }
    return true
  }
  //文件上传
  const fileUpload = async (options, isVideo) => {
    const res = await Utils.fileUpload(options.file, false, options.onProgress,
        isVideo);
    if (res) {
      let img = {
        uid: new Date().getTime(),
        name: res,
        status: 'done',
        url: URL.createObjectURL(options.file),
      }
      isVideo ? setVideoFileList([...videoFileList, img]) : setImgFileList(
          [...imgFileList, img]);
      isVideo ? setVideoName(res) : setImgNameList([...imgNameList, res]);
    } else {
      isVideo ? setVideoFileList([...videoFileList]) : setImgFileList(
          [...imgFileList]);
    }
  }
  //文件删除
  const fileRemove = (file, isVideo) => {
    if (isVideo) {
      setVideoFileList([])
      setVideoName(null)
    }
    imgFileList.some((item, index) => {
      if (item.uid === file.uid) {
        const imgList = JSON.parse(JSON.stringify(imgFileList))
        const imgNaList = JSON.parse(JSON.stringify([...imgNameList]))
        imgList.splice(index, 1)
        setImgFileList(imgList)
        imgNaList.splice(imgNameList.indexOf(item.name), 1)
        setImgNameList(imgNaList)
        return true
      }
    })
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
                  }]}
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
              <Cascader options={productCategory} fieldNames={{
                label: 'categoryContent',
                value: 'categoryId',
                children: 'children'
              }} showSearch={{filterCategory}}
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
                                        onChange={onProductAttChange}
                                        style={{width: '25%'}}>
                                  {getProductAttOption()}
                                </Select>
                              </Form.Item>
                              <Form.Item
                                  name={[field.name, 'detailed']}
                                  noStyle
                              >
                                <Select mode="tags" style={{width: '68%'}}
                                        placeholder="请输入商品具体属性 (可多选)"
                                        >

                                </Select>
                              </Form.Item>
                              <Form.Item noStyle>
                                <MinusCircleOutlined
                                    className="dynamic-delete-button"
                                    onClick={() => {
                                      remove(field.name);
                                      if (fields.length === 1) {
                                        setIsSteps(false);
                                        setProFromBtn({
                                          content: '确定',
                                          isAtt: !!productDetail,
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
                                  addFromItem(add);
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
              <ImgCrop {...propsCrop} beforeCrop={(file) => {
                return beforeUpload(file, false)
              }}>
                <Upload
                    {...imgUpProps}
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
                {imgPreview.isVideo ? <Player{...propsPlayer}/> :
                    <img className="product-preview-img"
                         src={imgPreview.imageSrc}/>}
              </Modal>
            </Form.Item>
            <Form.Item label="商品视频" labelCol={{span: 4}}
                       wrapperCol={{span: 8}}>
              <Upload.Dragger
                  {...videoUpProps}
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
                             detailHtml={productDetail
                                 ? productDetail.productDescription : null}
              />
            </Form.Item>
            <Form.Item name="productAfterSale" labelCol={{span: 4}}
                       wrapperCol={{span: 14}} label="售后保障">
              <ProductEditor ref={productAftRef}
                             detailHtml={productDetail
                                 ? productDetail.productAfterSale : null}
              />
            </Form.Item>
            <Form.Item name="productParameter" labelCol={{span: 4}}
                       wrapperCol={{span: 14}} label="商品参数">
              <ProductEditor ref={productParRef}
                             detailHtml={productDetail
                                 ? productDetail.productParameter : null}
              />
            </Form.Item>
            <Form.Item  {...formItemLayoutWithOutLabel}>
              <Button className="add-product-from-btn" onClick={addProductBasic}
                      loading={proFromBtn.load}
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
const stateToProps = (state) => {
  return {
    productAttributesList: state.productAttributes,
  }
}


export default connect(stateToProps, null)(AddUpProduct)