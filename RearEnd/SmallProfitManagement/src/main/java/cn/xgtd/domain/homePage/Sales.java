package cn.xgtd.domain.homePage;

/**
 * 销售额
 * @author Kite
 * @date 2020/6/27
 */
public class Sales {
    /**总销售额**/
    private Double totalSales;
    /**周同比*/
    private Double weekYoY;
    /**日同比**/
    private Double dayYoY;
    /**日销售额**/
    private Double todaySales;

    public Double getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(Double totalSales) {
        this.totalSales = totalSales;
    }

    public Double getWeekYoY() {
        return weekYoY;
    }

    public void setWeekYoY(Double weekYoY) {
        this.weekYoY = weekYoY;
    }

    public Double getDayYoY() {
        return dayYoY;
    }

    public void setDayYoY(Double dayYoY) {
        this.dayYoY = dayYoY;
    }

    public Double getTodaySales() {
        return todaySales;
    }

    public void setTodaySales(Double todaySales) {
        this.todaySales = todaySales;
    }
}
