package com.cj.shopping.sysmanage.service.impl;

import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.sysmanage.entity.Order;
import com.cj.shopping.sysmanage.mapper.OrderItemMapper;
import com.cj.shopping.sysmanage.mapper.OrderMapper;
import com.cj.shopping.sysmanage.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;


    @Override
    public PageInfo<Order> findByOrderIdLike(String orderId,PageParam pageParam) {
        PageHelper.startPage(pageParam.getPageNo(), pageParam.getPageSize());

        List<Order> list = orderMapper.findByOrderIdLike(orderId);

        PageInfo<Order> pageInfo = new PageInfo<Order>(list);

        return pageInfo;
    }

    @Override
    public boolean removeOrder(int orderid) {
        // 删除订单项
        orderItemMapper.deleteByOrderId(orderid);

        // 删除订单
        return orderMapper.deleteByPrimaryKey(orderid) > 0;
    }

    @Override
    public boolean sendout(int id) {
        Order order = orderMapper.selectByPrimaryKey(id);
        order.setState(1);
        orderMapper.updateByPrimaryKey(order);
        return true;
    }
}
