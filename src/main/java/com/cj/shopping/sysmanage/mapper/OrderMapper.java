package com.cj.shopping.sysmanage.mapper;

import com.cj.shopping.sysmanage.entity.Order;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer oid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> findByUId(int userid);

    @Select("select * from shopping_orders where oid LIKE concat('%',#{orderId},'%')")
    List<Order> findByOrderIdLike(String orderId);
}