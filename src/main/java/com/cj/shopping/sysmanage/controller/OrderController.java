package com.cj.shopping.sysmanage.controller;

import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.common.util.PageUtils;
import com.cj.shopping.sysmanage.entity.Message;
import com.cj.shopping.sysmanage.entity.Order;
import com.cj.shopping.sysmanage.mapper.OrderMapper;
import com.cj.shopping.sysmanage.service.MessageService;
import com.cj.shopping.sysmanage.service.OrderService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 类描述：处理留言的请求的处理器
 * 类名称：MessageController
 */
@Controller
@RequestMapping(value="/sysmgr/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 前台页面提示信息的属性名称
     */
    private static final String FRONT_TIPS_ATTR = "message";

    /**
     * 删除留言成功的提示消息
     */
    private static final String REMOVE_MESSAGE_SUCCESS = "删除订单成功";

    /**
     * 删除商城会员失败的提示消息
     */
    private static final String REMOVE_MESSAGE_FAILED = "删除订单失败";

    /**
     * 删除留言成功的提示消息
     */
    private static final String SENDOUT_MESSAGE_SUCCESS = "订单发货成功";

    /**
     * 删除商城会员失败的提示消息
     */
    private static final String SENDOUT_MESSAGE_FAILED = "订单发货失败";

    /**
     * 商城留言列表页面的URI
     */
    private static final String MESSAGE_LIST_URI = "sysmanage/order/orderList";

    /**
     * 商城留言信息页面的URI
     */
    private static final String MESSAGE_INFO_URI = "sysmanage/message/messageInfo";

    /**
     * 商城留言的分页查询方法
     */
    private static final String MESSAGE_QUERY_METHOD_PAGE = "messageMgr.listMessage";

    @Autowired
    private MessageService messageService;

    /**
     * 跳转到商城留言列表页面
     * @return
     */
    @RequestMapping(value="/gotoOrderList")
    public String gotoMessageList() {
        return MESSAGE_LIST_URI;
    }

    /**
     * 跳转到商城留言个人信息页面
     * @return
     */
    @RequestMapping(value="/gotoMessageInfo")
    public String gotoMessageInfo() {
        return MESSAGE_INFO_URI;
    }

    /**
     * 根据商城留言id获取商城会员的详细信息
     * @return
     */
    @RequestMapping(value="/getMessageByMessageId")
    public @ResponseBody
    Message getMessageByMessageId(Long messageid) {
        Message message = this.messageService.getMessageByMessageId(messageid);
        return message;
    }

    /**
     * 查询商城留言列表
     * @return
     */
    @RequestMapping(value="/listOrder")
    public @ResponseBody Map<String, Object> listMessage(String orderid, Integer pageNo,
                                                        Integer pageSize) {

        if(orderid == null){
            orderid = "";
        }
        // 创建分页对象
        PageParam pageParam = new PageParam(pageNo, pageSize);

        PageInfo<Order> pageInfo = orderService.findByOrderIdLike(orderid,pageParam);

        Map<String, Object> resultMap = new HashMap<String, Object>();

        // 1.获取商城留言列表
        List<Order> messageList = pageInfo.getList();
        // 2.获取分页条
        String pageBar = PageUtils.pageStr(pageInfo, MESSAGE_QUERY_METHOD_PAGE);
        // 3.获取总的记录数
        Long messageNums = pageInfo.getTotal();

        resultMap.put("messageList", messageList);
        resultMap.put("pageBar", pageBar);
        resultMap.put("messageNums", messageNums);

        return resultMap;
    }

    /**
     * 删除（逻辑删除）商城留言
     * @return
     */
    @RequestMapping(value="/removeOrder")
    public @ResponseBody Map<String, Object> removeMessage(Long messageId) {
        Map<String, Object> message = new HashMap<String, Object>();
        message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_FAILED);

        if (messageId != null) {
            boolean flag = orderService.removeOrder(messageId.intValue());
            if (flag) {
                message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_SUCCESS);
            }
        }

        return message;
    }

    @RequestMapping(value="/sendOut")
    public @ResponseBody Map<String, Object> sendOut(Long messageId) {
        Map<String, Object> message = new HashMap<String, Object>();
        message.put(FRONT_TIPS_ATTR, SENDOUT_MESSAGE_FAILED);

        if (messageId != null) {
            boolean flag = orderService.sendout(messageId.intValue());
            if (flag) {
                message.put(FRONT_TIPS_ATTR, SENDOUT_MESSAGE_SUCCESS);
            }
        }

        return message;
    }

    /**
     * 删除（逻辑删除）商城留言
     * @return
     */
    @RequestMapping(value="/removeOrderBatch")
    public @ResponseBody Map<String, Object> removeMemberBatch(@RequestBody Long[] messageIds) {

        Map<String, Object> message = new HashMap<String, Object>();
        message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_FAILED);

        if (messageIds != null && messageIds.length > 0) {

            boolean flag = false;
            for (int i = 0; i < messageIds.length; i++) {
                flag = orderService.removeOrder(messageIds[i].intValue());
            }

            if (flag) {
                message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_SUCCESS);
            }
        }

        return message;
    }

}
