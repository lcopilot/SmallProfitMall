package cn.xgtd.service.impl;

import cn.xgtd.dao.OrderDao;
import cn.xgtd.domain.order.Order;
import cn.xgtd.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/24
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;
    /**
     * 查询所有订单
     * @param currentPage 开始页
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public List<Order> findAllOrder(Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<Order> order =orderDao.findAllOrder(start,pageSize);
        return order;
    }


    /**
     * 查询总页数跟总收藏数量
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity = orderDao.fendOrderQuantity();
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }
}
