package com.cj.shopping.sysmanage.service.impl;

import com.alibaba.druid.util.StringUtils;
import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.sysmanage.entity.Message;
import com.cj.shopping.sysmanage.mapper.MessageMapper;
import com.cj.shopping.sysmanage.service.MessageService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 类描述：商城留言服务层接口的实现类
 * 类名称：MessageServiceImpl
 */
@Service("messageService")
public class MessageServiceImpl implements MessageService {
    private static final int HASH_ITERATIONS = 1024;

    private static final int SALT_SIZE = 8;

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public Long countMessage() {
        Long messageNums = this.messageMapper.countMessage();
        return messageNums;
    }

    @Override
    public Message getMessageByMessageId(Long messageId) {
        Message message = this.messageMapper.getMessageByMessageId(messageId);
        return message;
    }

    @Override
    public PageInfo<Message> listMessage(Message message, PageParam pageParam) {
        PageHelper.startPage(pageParam.getPageNo(), pageParam.getPageSize());

        List<Message> messageList = this.messageMapper.listMessage(message);

        PageInfo<Message> pageInfo = new PageInfo<Message>(messageList);

        return pageInfo;
    }

    @Override
    public List<Message> listMessage(Message message) {
        List<Message> messageList = this.messageMapper.listMessage(message);
        return messageList;
    }

    @Override
    public boolean removeMessage(Long messageId) {
        int rows = this.messageMapper.removeMessage(messageId);
        if (rows > 0) {
            return true;
        }

        return false;
    }

    @Override
    @Transactional(isolation=Isolation.DEFAULT, propagation = Propagation.REQUIRED)
    public boolean removeMessageBatch(List<Long> messageIds) {
        if (messageIds == null || messageIds.size() == 0) {
            return false;
        }
        // 先检查集合中的memberId是否存在
        int existMessageNums = this.messageMapper.countMessageInList(messageIds);
        if (existMessageNums != messageIds.size()) {
            return false;
        }

        // 批量删除
        int removeSuccessNums = this.messageMapper.removeMessageBatch(messageIds);

        if (removeSuccessNums == existMessageNums) {
            return true;
        }
        return false;
    }

    @Override
    public List<Message> findByUId(Long uid) {
        return messageMapper.findByUId(uid);
    }

    @Override
    public void add(Message messageObject) {
        messageMapper.add(messageObject);
    }
}
