import React, {useEffect, useState} from "react";
import {
  Button,
  Card,
  Input,
  DatePicker,
  Row,
  Col,
  Table,
  Modal,
  Tree, Form, Menu, Select, message, Skeleton
} from "antd";
import *as indexAPI from '../../api/page/index'
import UserOutlined from "@ant-design/icons/lib/icons/UserOutlined";
import menuList from "../../config/menuConfig";
import moment from "moment";
import {connect} from "react-redux";

import * as ActionCreators from "../../store/actionCreators";
import {
  PAGINATION,
  TIME_FORMAT
} from "../../config/sysConfig";
import {ExclamationCircleOutlined, LockOutlined} from "@ant-design/icons";
import MailOutlined from "@ant-design/icons/lib/icons/MailOutlined";
import TabletOutlined from "@ant-design/icons/lib/icons/TabletOutlined";

const {Search} = Input;
const {Option} = Select;
const {confirm} = Modal;

const User = (props) => {
  let {user} = props
  const [roles, setRoles] = useState([])
  const [userList, setUserList] = useState([])
  const [userVisible, setUserVisible] = useState(false)
  const [userInput, setUserInput] = useState(false)
  const [isEdit, setIsEdit] = useState(false)
  const [userTable, setUserTable] = useState({})
  const [skeletonLoad, setSkeletonLoad] = useState(true)
  const [form] = Form.useForm();

  const columns = [
    {
      title: '用户名称',
      dataIndex: 'userName'
    }, {
      title: '邮箱',
      dataIndex: 'email'
    }, {
      title: '电话',
      dataIndex: 'phone'
    }, {
      title: '创建时间',
      dataIndex: 'createTime',
      render: (createTime) => moment(createTime).format(TIME_FORMAT)
    }, {
      title: '创建人',
      dataIndex: 'creatorName'
    }, {
      title: '上次修改时间',
      dataIndex: 'lastTime',
      render: (lastTime) => moment(lastTime).format(TIME_FORMAT)
    }, {
      title: '上次修改人',
      dataIndex: 'lastAuthorName'
    },
    {
      title: '操作',
      fixed: 'right',
      width: 100,
      render: (user,record,index) => {
        return (
            <>
              <a onClick={() => {
                editAuthority(user,index)
              }}>编辑用户</a>
              <a onClick={() => {
                deleteUser(user,index)
              }}>删除</a>
            </>
        )
      },
    },
  ]

  //编辑用户
  const editAuthority = (users,index) => {
    const {userName, password, email, phone, roleId,uId} = users
    setUserTable({index,user:users})
    form.setFieldsValue({
      userName: userName,
      password: password,
      email: email,
      phone: phone,
      roleId: roleId.toString(),
    })
    setUserInput(uId===user.uId)
    setIsEdit(true)
    setUserVisible(true)
  }
  //删除用户
  const deleteUser = (user,index) => {
    confirm({
      title: '删除用户',
      icon: <ExclamationCircleOutlined/>,
      content: `你确定删除- ${user.userName} -用户吗? 删除后无法恢复`,
      cancelText: '取消',
      okText: '确定',
      onOk() {
        indexAPI.deleteUser(user.uId).then(res=>{
          if (res.success){
            message.success("用户删除成功!")
            let data=JSON.parse(JSON.stringify(userList))
            data.splice(index,1);
            setUserList(data);
          }
        })
      },
    });
  }

  //渲染用户角色列表
  const getRoleOption = () => {
    const roleOption = []
    roles.map(item => {
      roleOption.push((<Option key={item.rId} disabled={item.rId
      === user.roleId}>{item.name}</Option>));
    })
    return roleOption
  }

  //获取角色
  const getRoles = () => {
    indexAPI.getUserRoles(user.uId).then(res => {
      if (res.success) {
        setRoles(res.objectReturn.object)
      }
    })
  }
  //获取用户
  const getUser = () => {
    indexAPI.getUsers(user.uId).then(res => {
      if (res.success) {
        setSkeletonLoad(false);
        setUserList(res.objectReturn.object)
      }
    })
  }

  //添加修改用户
  const addEditUser = () => {
    form.validateFields().then(values => {
      values.roleId = parseInt(values.roleId);
      values.createAuthorId = user.uId
      values.lastAuthorId = user.uId
      if (isEdit){
        values.uId=userTable.user.uId
        indexAPI.editUser(values).then(res=>{
          if (res.success){
            let data=JSON.parse(JSON.stringify(userList))
            data[userTable.index]=res.objectReturn.object
            setUserList(data)
            message.success("用户修改成功!")
            shutDown();
          }
        })
      }else {
        indexAPI.addUser(values).then(res => {
          if (res.success) {
            setUserList([res.objectReturn.object, ...userList]);
            shutDown();
          } else {
            message.warn("用户已存在!")
          }
        })
      }
    })
  }

  const shutDown=()=>{
    setIsEdit(false)
    setUserVisible(false);
    setUserInput(false)
    form.resetFields();
  }
  useEffect(() => {
    getRoles();
    getUser();
    getRoleOption();
    return () => {
    }
  }, [])

  const title = (
      <Skeleton  active loading={skeletonLoad}>
        <Row gutter={16}>
          <Col xs={24} sm={9} md={6} lg={6} xl={4}>
            <DatePicker.RangePicker/>
          </Col>
          <Col xs={24} sm={15} md={9} lg={9} xl={9}>
            <Search
                placeholder="请输入用户名"
                onSearch={value => console.log(value)}
            />
          </Col>
          <Col xs={24} sm={24} md={9} lg={9} xl={11}>
            <Button type='primary' onClick={() => {
              setUserVisible(true)
            }}>创建用户</Button>
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
                rowKey={(item) => item.uId}
                dataSource={userList}
                columns={columns}
                pagination={{
                  defaultPageSize: PAGINATION.PAGE_SIZE,
                  total: userList.length,
                  showTotal: PAGINATION.SHOW_TOTAL,
                  showSizeChanger: true,
                  showQuickJumper: true,
                  pageSizeOptions: PAGINATION.PAGE_SIZE_OPTIONS
                }}
            />
            <Modal
                getContainer={false}
                title="创建用户"
                visible={userVisible}
                onOk={addEditUser}
                onCancel={shutDown}
            >
              <Form
                  form={form}
                  name="normal_login"
                  initialValues={{remember: true}}
              >
                <Form.Item
                    name="userName"
                    rules={[{
                      required: true,
                      whitespace: true,
                      message: '请输入用户名 3-12位',
                      min: 3,
                      max: 12
                    },
                      {
                        pattern: /^[a-zA-Z0-9_]+$/,
                        message: '用户名必须是英文、数字或下划线组成'
                      },]}
                >
                  <Input allowClear={true}
                         disabled={userInput}
                         prefix={<UserOutlined/>}
                         maxLength={12} placeholder="请输入用户名"/>
                </Form.Item>
                <Form.Item
                    name="password"
                    rules={[{
                      required: true,
                      whitespace: true,
                      message: '请输入密码 4-12位',
                      min: 4,
                      max: 12
                    },
                      {pattern: /^[a-zA-Z0-9_]+$/, message: '密码必须是英文、数字或下划线组成'},]}
                >
                  <Input.Password
                      prefix={<LockOutlined/>}
                      placeholder="请输入密码"
                      allowClear={true}
                      maxLength={12}
                  />
                </Form.Item>
                <Form.Item
                    name="email"
                    rules={[{
                      required: false,
                      whitespace: true,
                      message: '请输入电子邮件'
                    }, {type: 'email', message: '请输入正确的邮件格式',}]}
                >
                  <Input allowClear={true}
                         prefix={<MailOutlined/>}
                         maxLength={40} placeholder="请输入电子邮件"/>
                </Form.Item>
                <Form.Item
                    name="phone"
                    rules={[{required: true, whitespace: true, message: '请输入手机号'},
                      {
                        pattern: /^((13[0-9])|(14[0-9])|(15[0-9])|(17[0-9])|(18[0-9]))\d{8}$/,
                        message: '请输入正确的手机号'
                      },]}
                >
                  <Input allowClear={true}
                         prefix={<TabletOutlined/>}
                         maxLength={11} placeholder="请输入手机号"/>
                </Form.Item>
                <Form.Item
                    name="roleId"
                    rules={[{required: true, whitespace: true, message: '请选择角色'}]}
                >
                  <Select showSearch
                          menuItemSelectedIcon={<UserOutlined/>}
                          placeholder="请选择角色"
                          filterOption={(input, option) => {
                            let str = input.toLowerCase().split('')
                            let isMatch = false;
                            str.some((item) => {
                              if (option.children.toLowerCase().split(
                                  '').includes(
                                  item)) {
                                isMatch = true
                                return true;
                              }
                            })
                            return isMatch;
                          }
                          }
                  >
                    {getRoleOption()}
                  </Select>
                </Form.Item>
              </Form>
            </Modal>
          </Skeleton>

        </Card>
      </>
  )
}

const stateToProps = (state) => {
  return {
    user: state.user,
    userAuth: state.userAuth,
  }
}
const dispatchToProps = (dispatch) => {
  return {
    setUserAuth(data) {
      dispatch(ActionCreators.setUserAuth(data))
    }
  }
}

export default connect(stateToProps, dispatchToProps)(User)
