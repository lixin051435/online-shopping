package com.cj.shopping.sysmanage.service;

import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.sysmanage.entity.Order;
import com.github.pagehelper.PageInfo;

public interface OrderService {

    PageInfo<Order> findByOrderIdLike(String orderId,PageParam pageParam);

    boolean removeOrder(int orderid);

    boolean sendout(int i);
}
