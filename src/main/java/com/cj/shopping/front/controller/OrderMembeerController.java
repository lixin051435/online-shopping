package com.cj.shopping.front.controller;

import com.cj.shopping.front.entity.Cart;
import com.cj.shopping.front.entity.CartItem;
import com.cj.shopping.sysmanage.entity.Member;
import com.cj.shopping.sysmanage.entity.Order;
import com.cj.shopping.sysmanage.entity.OrderItem;
import com.cj.shopping.sysmanage.mapper.OrderItemMapper;
import com.cj.shopping.sysmanage.mapper.OrderMapper;
import com.cj.shopping.vo.OrderItemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class OrderMembeerController {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;

    @RequestMapping("/toOrderPage")
    public String addOrder(HttpServletRequest request, HttpSession session) {
        return "front/order";
    }

    @RequestMapping("/orderdetail")
    public String orderdetail(int oid, HttpServletRequest request, HttpSession session) {
        List<OrderItemVO> orderItems = orderItemMapper.findByOId(oid);
        request.setAttribute("orderItems",orderItems);
        return "front/orderdetail";
    }

    @RequestMapping("/shouhuo")
    public String shouhuo(int oid, HttpServletRequest request, HttpSession session) {
        Order order = orderMapper.selectByPrimaryKey(oid);
        order.setState(2);
        orderMapper.updateByPrimaryKey(order);
        return "redirect:tomyorder";
    }

    @RequestMapping("/tomyorder")
    public String tomyorder(HttpServletRequest request, HttpSession session) {

        Member member = (Member) session.getAttribute("member");
        int userid = member.getId().intValue();
        List<Order> orders = orderMapper.findByUId(userid);
        request.setAttribute("orders", orders);
        return "front/myorder";
    }

    @RequestMapping("/addOrder")
    public String addOrder(Order order, HttpServletRequest request, HttpSession session) {
        order.setOrderTime(new Date());
        Cart cart = (Cart) session.getAttribute("cart");
        Map<Long, CartItem> map = cart.getMap();

        double money = cart.getTotal();
        order.setMoney(money);
        Member member = (Member) session.getAttribute("member");
        order.setUserId(member.getId().intValue());
        order.setState(0);
        // 插入订单表
        orderMapper.insertSelective(order);
        int oid = order.getOid();
        // 插入订单详情表
        for (CartItem item :
                map.values()) {
            OrderItem orderitem = new OrderItem();
            orderitem.setOid(oid);
            orderitem.setCount(item.getCount());
            orderitem.setPid(item.getProduct().getProductId().intValue());
            orderitem.setSubtotal(item.getSubtotal());
            orderItemMapper.insertSelective(orderitem);
        }

        // 清除购物车
        session.removeAttribute("cart");

        return "front/car/car";
    }
}
