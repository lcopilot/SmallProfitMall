import {
  Badge,
  Button,
  Card,
  Col,
  DatePicker, Descriptions,
  List,
  Row,
  Skeleton, Space,
  Tabs, Typography
} from "antd";
import React, {useEffect, useState} from "react";
import {Axis, Chart, Geom, Tooltip as BTooltip} from "bizcharts";
import DataSet from "@antv/data-set";
import './detailedChart.less'
import moment from 'moment';
import 'moment/locale/zh-cn';
import DetailedChart from "../../components/home/detailedChart";
import * as indexApi from "../../api/page";
import {TIME_FORMAT, TIME_SALE, TIME_VIEWS} from "../../config/sysConfig";

moment.locale('zh-cn');

const {TabPane} = Tabs
const {RangePicker} = DatePicker;
const {Text, Paragraph, Link} = Typography;

const Detailed = () => {
  const [productRanking, setProductRanking] = useState([])
  const [startTime, setSTime] = useState(moment().startOf('year'));
  const [endTime, setETime] = useState(moment());
  const [type, setType] = useState("1");
  const [skeletonLoad, setSkeletonLoad] = useState(true)

  const setTime = (type) => {
    if (type === 1) {
      setSTime(moment());
      setETime(moment());
    } else if (type === 2) {
      setSTime(moment().startOf('week'));
      setETime(moment());
    } else if (type === 3) {
      setSTime(moment().startOf('month'));
      setETime(moment());
    } else if (type === 4) {
      setSTime(moment().startOf('year'));
      setETime(moment());
    }
  }

  const timeChange = (time) => {
    setSTime(moment(time[0]._d));
    setETime(moment(time[1]._d));
  }
  const getProductRanking = () => {
    let params = {
      quantity: 7
    }
    indexApi.getProductRanking(params).then(res => {
      if (res.success) {
        setProductRanking(res.results.data)
        setSkeletonLoad(false)
      }
    })
  }

  const timeSelection = (
      <>
        <Row>
          <Col xs={0} sm={0} md={0} lg={3} xl={3}>
            <Button type="dashed" onClick={() => {
              setTime(1)
            }}>
              今天
            </Button>
          </Col>
          <Col xs={0} sm={0} md={0} lg={3} xl={3}>
            <Button type="dashed" onClick={() => {
              setTime(2)
            }}>
              本周
            </Button>
          </Col>
          <Col xs={0} sm={0} md={0} lg={3} xl={3}>
            <Button type="dashed" onClick={() => {
              setTime(3)
            }}>
              本月
            </Button>
          </Col>
          <Col xs={0} sm={0} md={0} lg={3} xl={3}>
            <Button type="dashed" onClick={() => {
              setTime(4)
            }}>
              本年
            </Button>
          </Col>
          <Col xs={0} sm={24} md={24} lg={12} xl={12}>
            <RangePicker onChange={timeChange}
                         value={[moment(startTime), moment(endTime)]}/>
          </Col>
        </Row>
      </>
  );

  useEffect(() => {
    getProductRanking()
    return () => {
    }
  }, [])
  const DetailedChart = () => {

    const [data, setData] = useState([])
    const [cols, setCols] = useState({
      data: {
        tickInterval: 100
      }
    })
    const payFig = new DataSet.View().source(data);

    const getData = () => {
      if (type === '1') {
        const params = {
          startDate: moment(startTime).format(TIME_SALE),
          endDate: moment(endTime).format(TIME_SALE),
        }
        indexApi.getSale(params).then(res => {
          let arr = []
          let max=Number(res.results.data[0].data)
          res.results.data.map(item => {
            arr.unshift({
              time: item.date,
              data: Number(item.data),
            })
            if ( Number(item.data)>max){
              max =  Number(item.data);
            }
          })
          let newMax=Math.pow(10,Math.ceil(max).toString().length)
          let grade=max<(Math.pow(10,Math.ceil(max).toString().length)/2)?10:5
          let cols = {
            data: {
              tickInterval:Math.ceil(newMax/grade)
            }
          }
          setCols(cols)
          setData(arr)
        })
      } else {
        const params = {
          startDate: moment(startTime).format(TIME_VIEWS),
          endDate: moment(endTime).format(TIME_VIEWS),
        }
        indexApi.getViews(params).then(res => {
          if (res.success) {
            let arr = []
            let max=Number(res.results.data.dataDate[0][1])
            res.results.data.dataDate.map(item => {
              let time = ''
              if (item[0].indexOf(':') !== -1) {
                time = `${item[0].split(':')[0]}:00`
              } else if (item[0].indexOf('-') !== -1) {
                time = `${item[0].split('/')[0]}-${item[0].split('/')[1]}`
              } else {
                time = item[0]
              }
              arr.unshift({
                time: time,
                data: Number(item[1]),
              })
              if (item[1]>max){
                max = item[1];
              }
            })
            let newMax=Math.pow(10,Math.ceil(max).toString().length)
            let grade=max<(Math.pow(10,Math.ceil(max).toString().length)/2)?10:5
            let cols = {
              data: {
                tickInterval: Math.ceil(newMax/grade)
              }
            }
            setCols(cols)
            setData(arr)
          }
        })
      }
    }

    useEffect(() => {
      getData();
      return () => {
        getData();
      }
    }, [type])
    return (
        <Row justify="center">
          <Col xs={24} sm={24} md={24} lg={16} xl={16}>
            <div className="detailed-chart-columnar">
              <h4>{type === "1" ? '销量趋势' : '访问量'}</h4>
              <Chart height={254} forceFit={true}
                     padding={"auto"} data={payFig} scale={cols}>
                <Axis name="time"/>
                <BTooltip showTitle={false} itemTpl='<li data-index={index}>
                  <span style="background-color:{color};width:8px;height:8px;border-radius:50%;display:inline-block;margin-right:8px;"></span>
                  <span style="padding-right: 1rem;">{title}</span>{value}</li>'
                          crosshairs={{
                            type: 'rect' || 'x' || 'y' || 'cross'
                          }}/>
                <Geom type="interval" position="time*data"/>
              </Chart>
            </div>
          </Col>
          <Col xs={24} sm={24} md={24} lg={8} xl={8}>
            <div className="detailed-list">
              <List
                  header="商品销量排行"
                  dataSource={productRanking}
                  renderItem={(item, index) => (
                      <List.Item>
                        <Badge count={item.ranking}/>
                        <Link className="detailed-list-productName-link"
                              title={item.productName}
                              href={`https://www.smallprofit.fhxasdsada.xyz/product?productId=${item.productId}`}>
                          {item.productName}
                        </Link>
                      </List.Item>
                  )}
              />
            </div>
          </Col>
        </Row>
    )
  }

  return (
      <div className="detailed-chart">
        <Card loading={skeletonLoad}>
          <Tabs defaultActiveKey="1" onChange={(activeKey) => {
            setType(activeKey)
          }}
                tabBarExtraContent={timeSelection}>
            <TabPane tab="销售额" key="1">
              <DetailedChart/>
            </TabPane>
            <TabPane tab="访问量" key="2">
              <DetailedChart/>
            </TabPane>
          </Tabs>
        </Card>
      </div>
  )
}

export default Detailed