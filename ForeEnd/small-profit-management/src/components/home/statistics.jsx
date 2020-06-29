import {Card, Col, Divider, Row, Skeleton, Statistic, Tooltip} from "antd";
import {
  ExclamationCircleOutlined,
  CaretUpOutlined,
  CaretDownOutlined,
} from "@ant-design/icons";
import React, {useEffect, useState} from "react";
import './statistics.less'
import DataSet from "@antv/data-set";
import {Tooltip as BTooltip, Chart, Geom, Legend, Axis} from "bizcharts";
import *as indexApi from '../../api/page/index'
import moment from "moment";
import {TIME_VIEWS} from "../../config/sysConfig";

const Statistics = () => {

  const [totalSale, setTotalSale] = useState({})
  const [saleLoad, setSaleLoad] = useState(true)
  const [viewsLoad, setViewsLoad] = useState(true)
  const [paymentAmountLoad, setPaymentAmountLoad] = useState(true)
  const [totalUser, setTotalUser] = useState(true)
  const [viewsData, setViewsData] = useState(
      {dataDate: [{time: null, views: 0}]})
  const viewsFig = new DataSet.View().source(viewsData.dataDate);
  viewsFig.transform({
    type: "fold",
    fields: ["views"],
    key: "type",
    value: "value"
  });

  const [payFigData, setPayFigData] = useState({dataDate: [{time: null, payFig: 0}]})

  const scale = {
    value: {
      formatter: function (val) {
        return val;
      }
    },
  };

  const payFig = new DataSet.View().source(payFigData.dataDate);
  const cols = {
    sales: {
      tickInterval: 20
    }
  };
  const data2 = [
    {
      month: "2015-01-01",
      acc: 67.0
    },
    {
      month: "2015-02-01",
      acc: 14.9
    },
    {
      month: "2015-03-01",
      acc: 17.0
    },
    {
      month: "2015-04-01",
      acc: 20.2
    },
    {
      month: "2015-05-01",
      acc: 55.6
    },
    {
      month: "2015-06-01",
      acc: 56.7
    },
    {
      month: "2015-07-01",
      acc: 30.6
    },
    {
      month: "2015-08-01",
      acc: 63.2
    },
    {
      month: "2015-09-01",
      acc: 24.6
    },
    {
      month: "2015-10-01",
      acc: 14.0
    },
    {
      month: "2015-11-01",
      acc: 9.4
    },
    {
      month: "2015-12-01",
      acc: 6.3
    }
  ];
  const userFig = new DataSet.View().source(data2);
  const cols1 = {
    acc: {
      alias: "活跃量"
    }
  };

  //获取访问量
  const getViews = () => {
    const params = {
      gran: 'day',
      startDate: moment().subtract(30, 'days').format(TIME_VIEWS),
      endDate: moment(new Date()).format(TIME_VIEWS),
    }
    indexApi.getViews(params).then(res => {
      if (res.success) {
        res.results.data.dataDate = res.results.data.dataDate.map(item => {
          return {
            time: item[0],
            views: Number(item[1]),
          }
        })
        setViewsData(res.results.data)
        setViewsLoad(false)
      }
    })
  }

  //获取总销售额
  const getTotalSale = () => {
    indexApi.getTotalSale().then(res => {
      if (res.success) {
        setTotalSale(res.results.data)
        setSaleLoad(false)
      }
    })
  }

  //获取近30天支付数
  const getPayRecord=()=>{
    indexApi.getPayRecord().then(res=>{
      if (res.success){
        res.results.data.dataDate = res.results.data.dataDate.map(item => {
          return {
            time: item.data,
            payFig: Number(item.date),
          }
        })
        setPayFigData(res.results.data);
        setPaymentAmountLoad(false);
      }
    })
  }

  useEffect(() => {
    getTotalSale();
    getViews();
    getPayRecord()
    return () => {
    }
  }, [])

  return (
      <Row gutter={20}>
        <Col xs={24} sm={24} md={12} lg={12} xl={6}>
          <Card className="home-yesterday" loading={saleLoad}>
            <div className="home-yesterday-title-span">
              <span>总销售额</span>
              <span className="hint">
                <Tooltip placement="top" title={<>总销售额</>}>
                  <ExclamationCircleOutlined/>
                </Tooltip>
              </span>
            </div>
            <Statistic value={totalSale.totalSales} prefix="￥"/>
            <div className="home-yesterday-graphics">
              <Row>
                <Col xs={24} sm={12} md={12} lg={12} xl={12}>
                  周同比 {totalSale.weekYoY}% {React.createElement(
                    totalSale.weekYoYSign ? CaretUpOutlined
                        : CaretDownOutlined)}</Col>
                <Col xs={24} sm={12} md={12} lg={12} xl={12}>
                  日同比 {totalSale.dayYoY}% {React.createElement(
                    totalSale.dayYoYSign ? CaretUpOutlined
                        : CaretDownOutlined)}</Col>
              </Row>
            </div>
            <Divider/>
            <div>
              日销售额 ￥<span>{totalSale.todaySales}</span>
            </div>
          </Card>
        </Col>
        <Col xs={24} sm={24} md={12} lg={12} xl={6}>
          <Card className="home-yesterday" loading={viewsLoad}>
            <div className="home-yesterday-title-span">
              <span>30天访问量</span>
              <span className="hint">
                <Tooltip placement="top"
                         title={<>近30天平台访问量<br/>图表为近30天每日访问量</>}>
                  <ExclamationCircleOutlined/>
                </Tooltip>
              </span>
            </div>
            <Statistic value={viewsData.pv}/>
            <div>
              <Chart
                  height={46}
                  data={viewsFig}
                  forceFit={true}
                  padding={"auto"}
                  scale={scale}
              >
                <BTooltip showTitle={false}
                          itemTpl='<li data-index={index}>
                  <span style="background-color:{color};width:8px;height:8px;border-radius:50%;display:inline-block;margin-right:8px;"></span>
                  <span style="padding-right: 1rem;">{title}</span>{value}</li>'
                          crosshairs={{
                            type: 'rect' || 'x' || 'y' || 'cross'
                          }}/>
                <Geom type="area" position="time*value" color="type"
                      shape="smooth"/>
              </Chart>
            </div>
            <Divider/>
            <div>
              日均访问量 <span>{Math.ceil(
                viewsData.pv / viewsData.dataDate.length)}</span>
            </div>
          </Card>
        </Col>
        <Col xs={24} sm={24} md={12} lg={12} xl={6}>
          <Card className="home-yesterday" loading={paymentAmountLoad}>
              <div className="home-yesterday-title-span">
                <span>支付笔数</span>
                <span className="hint">
                <Tooltip placement="top" title={<>总支付数<br/>图表为近30天每日支付数</>}>
                  <ExclamationCircleOutlined/>
                </Tooltip>
              </span>
              </div>
              <Statistic value={payFigData.dayPayQuantity}/>
              <div>
                <Chart height={46} forceFit={true}
                       padding={"auto"} data={payFig} scale={cols}>
                  <BTooltip showTitle={false}
                            itemTpl='<li data-index={index}>
                  <span style="background-color:{color};width:8px;height:8px;border-radius:50%;display:inline-block;margin-right:8px;"></span>
                  <span style="padding-right: 1rem;">{title}</span>{value}</li>'
                            crosshairs={{
                              type: 'rect' || 'x' || 'y' || 'cross'
                            }}
                  />
                  <Geom type="interval" position="time*payFig"/>
                </Chart>
              </div>
              <Divider/>
              <div>
                日均支付数 <span>{Math.ceil(payFigData.dayPayQuantity/payFigData.dataDate.length)}</span>
              </div>
          </Card>
        </Col>
        <Col xs={24} sm={24} md={12} lg={12} xl={6}>
          <Card className="home-yesterday">
            <Skeleton active loading={false}>
              <div className="home-yesterday-title-span">
                <span>总用户量</span>
                <span className="hint">
                <Tooltip placement="topRight"
                         title={<>总用户量<br/>图表为近30天用户活跃量</>}>
                  <ExclamationCircleOutlined/>
                </Tooltip>
              </span>
              </div>
              <Statistic value={112893}/>
              <div>
                <Chart height={46} data={userFig} scale={cols1} forceFit={true}
                       padding={"auto"}>
                  <BTooltip crosshairs={{
                    type: 'rect' || 'x' || 'y' || 'cross'
                  }}/>
                  <Geom
                      type="line"
                      position="month*acc"
                      size={1}
                      // 线性渐变，渐变角度为 270，渐变的起始点颜色 rgba(215, 236, 173, 1)，中点的渐变色为 rgba(150, 211, 147, 1)，结束的渐变色为 rgba(94, 144, 103, 1)
                      color="l (270) 0:rgba(215, 236, 173, 1) .3:rgba(150, 211, 147, 1) .5:rgba(110, 189, 123, 1) .7:rgba(105, 186, 120,1) 1:rgba(94, 144, 103, 1)"
                      shape="smooth"
                      style={{
                        shadowColor: "l (270) 0:rgba(21, 146, 255, 0)",
                        shadowBlur: 60,
                        shadowOffsetY: 6
                      }}
                  />
                </Chart>
              </div>
              <Divider/>
              <div>
                日活跃量 <span>12,423</span>
              </div>
            </Skeleton>
          </Card>
        </Col>

      </Row>

  )
}

export default Statistics