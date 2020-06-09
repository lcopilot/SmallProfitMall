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
  Tree, Form, Menu, message, Select, Skeleton
} from "antd";
import './role.less'
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
import {ExclamationCircleOutlined} from "@ant-design/icons";

const {Search} = Input;
const {Option} = Select;
const {confirm} = Modal;

const Role = (props) => {
  let {user, userAuth, setUserAuth} = props
  const [rolesList, setRolesList] = useState([])
  const [roleVisible, setRoleVisible] = useState(false)
  const [roleInput, setRoleInput] = useState(false)
  const [form] = Form.useForm();
  const [checkedKeys, setCheckedKeys] = useState([]);
  const [checkedKeysResult, setCheckedKeysResult] = useState([]);
  const [rolesShow, setRolesShow] = useState(false);
  const [isEdit, setIsEdit] = useState(false)
  const [rolesTable, setRolesTable] = useState({})
  const [skeletonLoad, setSkeletonLoad] = useState(true)
  const [queryDate, setQueryDate] = useState({
    beforeTime:null,
    laterTime:null,
  })

  const onCheck = (checkedKeys, info) => {
    if (checkedKeys.includes('/user')) {
      setRolesShow(true)
    } else {
      setRolesShow(false)
    }
    setCheckedKeys(checkedKeys);
    setCheckedKeysResult([...checkedKeys, ...info.halfCheckedKeys]);
  };

  //角色表格对应的列
  const columns = [
    {
      title: '角色名称',
      dataIndex: 'name'
    }, {
      title: '创建时间',
      dataIndex: 'createTime',
      render: (createTime) => moment(createTime).format(
          TIME_FORMAT)
    }, {
      title: '创建人',
      dataIndex: 'createAuthorName'
    }, {
      title: '上次授权时间',
      dataIndex: 'lastTime',
      render: (lastTime) => moment(lastTime).format(TIME_FORMAT)
    }, {
      title: '上次授权人',
      dataIndex: 'lastAuthorName'
    },
    {
      title: '操作',
      fixed: 'right',
      width: 100,
      render: (role, record, index) => {
        return (
            <>
              <a onClick={() => {
                editAuthority(role, index)
              }}>编辑权限</a>
              <a onClick={() => {
                deleteRole(role, index)
              }}>删除</a>
            </>
        )
      },
    },
  ]

  //编辑角色
  const editAuthority = (roles,index) => {
    const {menus, name, roleIds,rId} = roles
    setRolesTable({index,roles});
    form.setFieldsValue({
      roleName: name,
      roleList: roleIds ? roleIds : []
    })
    setRolesShow(!!roleIds)
    setIsEdit(true)
    setRoleInput(rId===user.roleId)
    setRoleVisible(true)
    setCheckedKeys(menus)
  }

  //删除角色
  const deleteRole = (roles, index) => {
    confirm({
      title: '删除角色',
      icon: <ExclamationCircleOutlined/>,
      content: `你确定删除- ${roles.name} -角色吗? 删除后无法恢复`,
      cancelText: '取消',
      okText: '确定',
      onOk() {
        indexAPI.deleteRoles(roles.rId).then(res => {
          if (res.success) {
            message.success("角色删除成功!")
            let data = JSON.parse(JSON.stringify(rolesList))
            data.splice(index, 1);
            setRolesList(data);
          }
        })
      },
    });
  }

  //获取角色
  const getRoles = () => {
    indexAPI.getRoles(user.uId).then(res => {
      if (res.success) {
        setSkeletonLoad(false);
        setRolesList(res.objectReturn.object)
      }
    })
  }
  //添加修改角色
  const addEditRole = () => {
    form.validateFields().then(values => {
      const roles = {
        createAuthorId: user.uId,
        name: values.roleName,
        menus: checkedKeysResult,
        roleIds: values.roleList,
      }
      if (isEdit) {
        roles.menus = checkedKeysResult.length===0?rolesTable.roles.menus:checkedKeysResult;
        roles.lastAuthorId = user.uId
        roles.rId = rolesTable.roles.rId
        indexAPI.editRoles(roles).then(res => {
          if (res.success){
            let data=JSON.parse(JSON.stringify(rolesList))
            data[rolesTable.index]=res.objectReturn.object
            setRolesList(data)
            message.success("角色修改成功!")
            shutDown();
          }else {
            message.error("修改失败,请稍后重试!")
            shutDown();
          }
        })
      } else {
        indexAPI.addRoles(roles).then(res => {
              if (res.success) {
                setRolesList([res.objectReturn.object, ...rolesList])
                shutDown();
              } else {
                message.warn("角色已存在!")
              }
            }
        )
      }
    })
  }
  //获取用户所拥有的权限
  const getUserAuth = (menuList) => {
    const menus = user.role.menus
    const username = user.username
    let checkedKeyList = [];
    return menuList.reduce((pre, item) => {
      if (menus.indexOf(item.key) !== -1 || username === 'admin'
          || item.isPublic) {
        if (item.isPublic && item.disabled) {
          checkedKeyList.push(item.key)
        }
        if (!item.children) {
          pre.push(item)
        } else {
          pre.push(item)
          item.children = getUserAuth(item.children)
        }
      }
      setCheckedKeys(checkedKeyList)
      return pre
    }, [])

  }

  //渲染用户角色列表
  const getRoleOption = () => {
    const roleOption = []
    rolesList.map(item => {
      roleOption.push((<Option key={item.rId} disabled={item.rId
      === user.roleId}>{item.name}</Option>));
    })
    return roleOption
  }

  //对话框关闭
  const shutDown = () => {
    setIsEdit(false)
    setRoleVisible(false);
    setRoleInput(false);
    form.resetFields();
  }

  //搜索角色
  const searchRoles=(searchContent)=>{
    let data={
      content:searchContent,
      ...queryDate
    }
    if(data.content||data.beforeTime||data.laterTime){
      indexAPI.searchRoles(data).then(res=>{
        if (res.success){
          setRolesList(res.objectReturn.object)
        }
      })
    }
  }

  useEffect(() => {
    setUserAuth(getUserAuth(menuList))
    getRoles();
    return () => {
    }
  }, [])

  const title = (
      <Skeleton  active loading={skeletonLoad}>
        <Row gutter={16}>
          <Col xs={24} sm={24} md={12} lg={12} xl={8}>
            <DatePicker showTime placeholder="开始日期"  onChange={(date)=>{
              setQueryDate({
                beforeTime:queryDate.beforeTime,
                laterTime:moment(date).format("YYYY-MM-DD HH:mm:ss"),
              })
            }}/>
            <DatePicker showTime placeholder="结束日期" onChange={(date)=>{
              setQueryDate({
                beforeTime:moment(date).format("YYYY-MM-DD HH:mm:ss"),
                laterTime:queryDate.laterTime,
              })
            }}/>
          </Col>
          <Col xs={24} sm={24} md={12} lg={12} xl={8}>
            <Search
                enterButton
                placeholder="请输入角色名"
                onSearch={searchContent => searchRoles(searchContent)}
            />
          </Col>
          <Col xs={24} sm={24} md={24} lg={24} xl={8}>
            <Button type='primary' onClick={() => {
              setRoleVisible(true)
            }}>创建角色</Button>
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
                rowKey={(item) => item.rId}
                dataSource={rolesList}
                columns={columns}
                pagination={{
                  total: rolesList.length,
                  ...PAGINATION
                }}
            />
            <Modal
                getContainer={false}
                title="创建角色"
                visible={roleVisible}
                onOk={addEditRole}
                onCancel={shutDown}
            >
              <Form
                  form={form}
              >
                <Form.Item
                    name="roleName"
                    rules={[{
                      required: true,
                      whitespace: true,
                      message: '请输入角色名 1-12位',
                      min: 1,
                      max: 12
                    },
                      {
                        pattern: /^[\u4e00-\u9fa5_a-zA-Z0-9]+$/,
                        message: '角色名必须是中英文、数字或下划线组成'
                      },]}
                >
                  <Input allowClear={true}
                         disabled={roleInput}
                         prefix={<UserOutlined className="site-form-item-icon"/>}
                         maxLength={12} placeholder="请输入角色名"/>
                </Form.Item>
                <Form.Item label='设置权限'>
                  <Tree
                      checkable
                      defaultExpandAll
                      onCheck={onCheck}
                      checkedKeys={checkedKeys}
                      showIcon
                      treeData={userAuth}
                  />
                </Form.Item>
                <Form.Item name="roleList">
                  {
                    rolesShow ? <Select
                        showSearch
                        menuItemSelectedIcon={<UserOutlined/>}
                        mode="multiple"
                        placeholder="请选择用户能授权的角色"
                        filterOption={(input, option) => {
                          let str = input.toLowerCase().split('')
                          let isMatch = false;
                          str.some((item) => {
                            if (option.children.toLowerCase().split('').includes(
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
                    </Select> : <></>
                  }
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

export default connect(stateToProps, dispatchToProps)(Role)
