package cn.xgtd.service.impl;

import cn.xgtd.dao.SalesDao;
import cn.xgtd.domain.homePage.Sales;
import cn.xgtd.service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.DecimalFormat;

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
            sales.setWeekYoY(weekRise);
        }
        if (weekSales==null && lastWeekSales==null){
            sales.setWeekYoY(0.00);
        }
        if (weekSales==null && lastWeekSales!=null){
            sales.setWeekYoY(-lastWeekSales);
        }
        if (weekSales!=null && lastWeekSales==null){
            sales.setWeekYoY(lastWeekSales);
        }

        BigDecimal bd1 = new BigDecimal(Double.toString(yesterdaySales));
        BigDecimal bd2 = null;
        if (BeforeSales!=null){
            bd2 = new BigDecimal(Double.toString(BeforeSales));
        }
        BigDecimal bd3 = new BigDecimal(Double.toString(100.00));        //设置日同比
        if (yesterdaySales!=null && BeforeSales!=null ){
            Double weekRise = bd1.divide(bd2, 2, BigDecimal.ROUND_HALF_UP).doubleValue();
            BigDecimal bd4 = new BigDecimal(Double.toString(weekRise));
            Double weekRises = bd4.multiply(bd3).doubleValue();
            sales.setDayYoY(weekRises);
        }
        if (yesterdaySales==null && BeforeSales==null){
            sales.setDayYoY(0.00);
        }
        if (yesterdaySales==null && BeforeSales!=null){
            Double dayYoY = -bd1.multiply(bd3).doubleValue();
            sales.setDayYoY(dayYoY);
        }
        if (yesterdaySales!=null && BeforeSales==null){
            Double dayYoY = bd1.multiply(bd3).doubleValue();
            sales.setDayYoY(dayYoY);
        }

        return sales;
    }
}
