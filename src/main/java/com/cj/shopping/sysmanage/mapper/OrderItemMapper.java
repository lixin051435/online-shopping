package com.cj.shopping.sysmanage.mapper;

import com.cj.shopping.sysmanage.entity.OrderItem;
import com.cj.shopping.vo.OrderItemVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderItemMapper {
    int deleteByPrimaryKey(Integer oiid);

    int deleteByOrderId(Integer orderid);

    int insert(OrderItem record);

    int insertSelective(OrderItem record);

    OrderItem selectByPrimaryKey(Integer oiid);

    int updateByPrimaryKeySelective(OrderItem record);

    int updateByPrimaryKey(OrderItem record);

    @Select("select * from shopping_orderitem a,shopping_product p where a.pid = p.product_id and a.oid = #{oid}")
    List<OrderItemVO> findByOId(int oid);
}