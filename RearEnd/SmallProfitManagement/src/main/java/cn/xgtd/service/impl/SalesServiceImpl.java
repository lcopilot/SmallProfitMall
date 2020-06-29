package cn.xgtd.service.impl;

import cn.xgtd.dao.SalesDao;
import cn.xgtd.domain.homePage.PayRecord;
import cn.xgtd.domain.homePage.Sales;
import cn.xgtd.domain.homePage.SalesRanking;
import cn.xgtd.service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static com.sun.tools.doclint.Entity.divide;
import static com.sun.tools.doclint.Entity.nu;
import static jdk.nashorn.internal.objects.NativeMath.round;

/**
 * 销售额业务层
 * @author Kite
 * @date 2020/6/28
 */
@Service
public class SalesServiceImpl implements SalesService {
    @Autowired
    SalesDao salesDao;
    /**
     * 查询销售额
     * @return
     */
    @Override
    public Sales findSales(){
        Sales sales = new Sales();
        //查询总销售额
        Double totalSales = salesDao.findTotalSales();
        //查询本周销售额
        Double weekSales = salesDao.findWeekSales();
        //查询上周销售额
        Double lastWeekSales =  salesDao.findLastWeekSales();
        //查询今天销售额
        Double todaySales = salesDao.findTodaySales(0);
        //查询昨日销售额
        Double yesterdaySales = salesDao.findTodaySales(1);
        //查询前日销售额
        Double BeforeSales = salesDao.findTodaySales(2);

        DecimalFormat df=new DecimalFormat("0.00");
        //设置总销售额
        sales.setTotalSales(totalSales);
        //设置日销售额
        if (todaySales==null){
            sales.setTodaySales(0.00);
        }else {
            sales.setTodaySales(todaySales);
        }

        //设置周同比
        if (weekSales!=null && lastWeekSales!=null ){
            BigDecimal bd1 = new BigDecimal(Double.toString(weekSales));
            BigDecimal bd2 = new BigDecimal(Double.toString(lastWeekSales));
            Double weekRise = bd1.divide(bd2, 2, BigDecimal.ROUND_HALF_UP).doubleValue();

            weekRise = new Double(df.format((float)(weekRise-1)*100));
            if (weekRise<0){
                weekRise = weekRise*-1;
            }
            sales.setWeekYoY(weekRise);
        }
        if (weekSales==null && lastWeekSales==null){
            sales.setWeekYoY(0.00);
            sales.setDayYoYSign(false);
        }
        if (weekSales==null && lastWeekSales!=null){
            sales.setWeekYoY(-lastWeekSales);
        }
        if (weekSales!=null && lastWeekSales==null){
            sales.setWeekYoY(lastWeekSales);
        }
        //昨日销售额
        BigDecimal bd1 = new BigDecimal(Double.toString(yesterdaySales));
        //前日销售额
        BigDecimal bd2 = null;
        if (BeforeSales!=null){
            bd2 = new BigDecimal(Double.toString(BeforeSales));
        }

        //设置日同比
        BigDecimal bd3 = new BigDecimal(Double.toString(100.00));
        if (yesterdaySales!=null && BeforeSales!=null ){
            Double dayYoY = bd1.divide(bd2, 2, BigDecimal.ROUND_HALF_UP).doubleValue();
            BigDecimal bd4 = new BigDecimal(Double.toString(dayYoY));
            Double weekRises = bd4.multiply(bd3).doubleValue();
            weekRises = new Double(df.format((float)(weekRises-1)*100));

            if (dayYoY<0){
                sales.setDayYoYSign(false);
                weekRises=weekRises*-1;
            }
            sales.setDayYoY(weekRises);
        }
        if (yesterdaySales==null && BeforeSales==null){
            sales.setDayYoY(0.00);
            sales.setDayYoYSign(false);
        }
        if (yesterdaySales==null && BeforeSales!=null){
            Double dayYoY = -bd1.multiply(bd3).doubleValue();
            sales.setDayYoY(dayYoY);
        }
        if (yesterdaySales!=null && BeforeSales==null){
            Double dayYoY = bd1.multiply(bd3).doubleValue();
            sales.setDayYoY(dayYoY);
        }

        if (sales.getDayYoY()<0 && sales.getDayYoY()!=0  ){
            Double dayYoY =  sales.getDayYoY();
            dayYoY = dayYoY*-1;
            sales.setDayYoY(dayYoY);
            sales.setDayYoYSign(false);
        }else {
            sales.setDayYoYSign(true);
        }
        if (sales.getWeekYoY()<0 && sales.getWeekYoY()!=0  ){
            Double weekYoY =  sales.getWeekYoY();
            weekYoY = weekYoY*-1;
            sales.setWeekYoY(weekYoY);
            sales.setWeekYoYSign(false);
        }else {
            sales.setWeekYoYSign(true);
        }

        return sales;
    }

    /**
     * 查询商品销量
     * @return
     */
    @Override
    public List<SalesRanking> findSalesRanking(Integer quantity) {
        List<String> salesRanking = salesDao.findSalesRanking(quantity);
        List<SalesRanking> salesRankingList = new ArrayList<>();
        for (int i = 0; i <salesRanking.size() ; i++) {
            SalesRanking salesRanking1 = new SalesRanking();
            salesRanking1.setRanking(i+1);
            salesRanking1.setProductName(salesRanking.get(i));
            salesRankingList.add(salesRanking1);
        }
        return salesRankingList;
    }

    /**
     * 查询商品支付记录
     * @return
     */
    @Override
    public PayRecord findPayRecord() {
        List<PayRecord> payRecords = salesDao.findPayRecord();
        List list = new ArrayList();
        for (int i = 0; i <payRecords.size(); i++) {
            Date date = payRecords.get(i).getDate();
            Integer dayPayQuantity = payRecords.get(i).getDayPayQuantity();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
            String dateString = formatter.format(date);
            String[] dataDate = new String[1];
            dataDate[0]=dateString+","+dayPayQuantity.toString();
            list.add(dataDate);
        }
        PayRecord payRecord = new PayRecord();
        payRecord.setDayPayQuantity(payRecords.get(list.size()-1).getDayPayQuantity());
        payRecord.setDataDate(list);
        return payRecord;
    }


}
