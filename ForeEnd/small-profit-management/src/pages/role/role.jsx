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
  Tree, Form, Menu, message, Select
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

const {Search} = Input;
const {Option} = Select;

const Role = (props) => {
  let {user, userAuth, setUserAuth} = props
  const [rolesList, setRolesList] = useState([])
  const [roleVisible, setRoleVisible] = useState(false)
  const [roleInput, setRoleInput] = useState(false)
  const [form] = Form.useForm();
  const [checkedKeys, setCheckedKeys] = useState([]);
  const [checkedKeysResult, setCheckedKeysResult] = useState([]);
  const [rolesShow, setRolesShow] = useState(false);

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
      render: (role) => {
        return (
            <>
              <a onClick={() => {
                editAuthority(role)
              }}>编辑权限</a>
              <a onClick={() => {
                deleteRole(role)
              }}>删除</a>
            </>
        )
      },
    },
  ]

  //编辑角色
  const editAuthority = (role) => {
    const {menus, name} = role
    form.setFieldsValue({
      roleName: name
    })
    setRoleInput(true)
    setRoleVisible(true)
    setCheckedKeys(menus)
  }

  const deleteRole = (role) => {

  }

  //获取角色
  const getRoles = () => {
    indexAPI.getRoles(user.uId).then(res => {
      if (res.success) {
        setRolesList(res.objectReturn.object)
      }
    })
  }
  //添加角色
  const addRole = () => {
    form.validateFields().then(values => {
      const roles = {
        createAuthorId: user.uId,
        name: values.roleName,
        menus: checkedKeysResult,
        roleIds:values.roleList,
      }
      indexAPI.addRoles(roles).then(res => {
            if (res.success) {
              setRolesList([res.objectReturn.object, ...rolesList])
              setRoleVisible(false);
              setRoleInput(false);
              form.resetFields();
            } else {
              message.warn("角色已存在!")
            }
          }
      )
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

  useEffect(() => {
    setUserAuth(getUserAuth(menuList))
    getRoles();
    return () => {
    }
  }, [])

  const title = (
      <Row gutter={16}>
        <Col xs={24} sm={9} md={6} lg={6} xl={4}>
          <DatePicker.RangePicker/>
        </Col>
        <Col xs={24} sm={15} md={9} lg={9} xl={9}>
          <Search
              placeholder="查询角色"
              onSearch={value => console.log(value)}
          />
        </Col>
        <Col xs={24} sm={24} md={9} lg={9} xl={11}>
          <Button type='primary' onClick={() => {
            setRoleVisible(true)
          }}>创建角色</Button>
        </Col>
      </Row>
  )
  return (
      <>
        <Card title={title}>
          <Table
              bordered
              rowKey={(item) => item.rId}
              dataSource={rolesList}
              columns={columns}
              pagination={{
                defaultPageSize: PAGINATION.PAGE_SIZE,
                total: rolesList.length,
                showTotal: PAGINATION.SHOW_TOTAL,
                showSizeChanger: true,
                showQuickJumper: true,
                pageSizeOptions: PAGINATION.PAGE_SIZE_OPTIONS
              }}
          />
          <Modal
              getContainer={false}
              title="创建角色"
              visible={roleVisible}
              onOk={addRole}
              onCancel={() => {
                setRoleVisible(false);
                setRoleInput(false)
                form.resetFields();
              }}
          >
            <Form
                form={form}
                name="normal_login"
                initialValues={{remember: true}}
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
              <Form.Item  name="roleList">
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
                  </Select>: ''
                }
              </Form.Item>

            </Form>
          </Modal>
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
