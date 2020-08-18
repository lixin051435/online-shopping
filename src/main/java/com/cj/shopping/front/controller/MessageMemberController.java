package com.cj.shopping.front.controller;

import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.common.util.PageUtils;
import com.cj.shopping.sysmanage.entity.Member;
import com.cj.shopping.sysmanage.entity.Message;
import com.cj.shopping.sysmanage.service.MessageService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 类描述：处理留言的请求的处理器
 * 类名称：MessageController
 */
@Controller
@RequestMapping(value="/message")
public class MessageMemberController {

    /**
     * 前台页面提示信息的属性名称
     */
    private static final String FRONT_TIPS_ATTR = "message";

    /**
     * 删除留言成功的提示消息
     */
    private static final String REMOVE_MESSAGE_SUCCESS = "删除留言成功";

    /**
     * 删除商城会员失败的提示消息
     */
    private static final String REMOVE_MESSAGE_FAILED = "删除留言失败";

    /**
     * 商城留言列表页面的URI
     */
    private static final String MESSAGE_LIST_URI = "sysmanage/message/messageList";

    /**
     * 商城留言信息页面的URI
     */
    private static final String MESSAGE_INFO_URI = "front/messageInfo";

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
    @RequestMapping(value="/gotoMessageList")
    public String gotoMessageList() {
        return MESSAGE_LIST_URI;
    }

    /**
     * 跳转到商城留言个人信息页面
     * @return
     */
    @RequestMapping(value="/gotoMessageInfo")
    public String gotoMessageInfo(HttpServletRequest request, HttpSession session) {
        Member member = (Member) session.getAttribute("member");
        if(member == null){
            return "redirect:/index.jsp";
        }
        Long uid = member.getId();
        List<Message> messages = messageService.findByUId(uid);
        request.setAttribute("messages",messages);
        return MESSAGE_INFO_URI;
    }

    /**
     * 根据商城留言id获取商城会员的详细信息
     * @return
     */
    @RequestMapping(value="/addmessage")
    public String addmessage(String message,HttpSession session) {
        Message messageObject = new Message();
        messageObject.setMessage(message);
        messageObject.setDelFlag(0);
        messageObject.setMessagedate(new Date());
        Member member = (Member) session.getAttribute("member");
        Long uid = member.getId();
        messageObject.setId(uid);
        this.messageService.add(messageObject);
        return "redirect:/message/gotoMessageInfo";
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
    @RequestMapping(value="/listMessage")
    public @ResponseBody Map<String, Object> listMessage(String messageName, Integer pageNo,
                                                        Integer pageSize) {

        Message message = new Message();
        // 去除名称中的空格
       message.setMessage(messageName.replace(" ",""));

        // 创建分页对象
        PageParam pageParam = new PageParam(pageNo, pageSize);

        PageInfo<Message> pageInfo = this.messageService.listMessage(message, pageParam);

        Map<String, Object> resultMap = new HashMap<String, Object>();

        // 1.获取商城留言列表
        List<Message> messageList = pageInfo.getList();
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
    @RequestMapping(value="/removeMessage")
    public @ResponseBody Map<String, Object> removeMessage(Long messageId) {
        Map<String, Object> message = new HashMap<String, Object>();
        message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_FAILED);

        if (messageId != null) {
            boolean flag = this.messageService.removeMessage(messageId);
            if (flag) {
                message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_SUCCESS);
            }
        }

        return message;
    }

    /**
     * 删除（逻辑删除）商城留言
     * @return
     */
    @RequestMapping(value="/removeMessageBatch")
    public @ResponseBody Map<String, Object> removeMemberBatch(@RequestBody Long[] messageIds) {

        Map<String, Object> message = new HashMap<String, Object>();
        message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_FAILED);

        if (messageIds != null && messageIds.length > 0) {

            boolean flag = false;
            for (int i = 0; i < messageIds.length; i++) {
                flag = this.messageService.removeMessage(messageIds[i]);
            }

            if (flag) {
                message.put(FRONT_TIPS_ATTR, REMOVE_MESSAGE_SUCCESS);
            }
        }

        return message;
    }

}
