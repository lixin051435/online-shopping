package com.cj.shopping.sysmanage.mapper;

import com.cj.shopping.sysmanage.entity.Message;

import java.util.List;
/**
 * 类描述：商城留言mapper接口
 * 类名称：MessageMapper
 */
public interface MessageMapper {
    /**
     * 统计既存在于数据库中又存在于集合中的商城留言数目
     * @parammessageIds 页面上传过来的商城留言messageid集合
     * @return
     */
    int countMessageInList(List<Long> messageIds);

    /**
     * 统计所有商城会员的数目(未删除的)
     * @return
     */
    Long countMessage();

    /**
     * 通过商城留言messageid获取商城留言的详细信息
     * @parammessageId 商城留言messageid
     * @return
     */
    Message getMessageByMessageId(Long messageId);

    /**
     * 根据messageid来查询商城留言列表
     * @parammessage 根据message中已有的信息查询商城会员列表
     * @return
     */
    List<Message> listMessage(Message message);



    List<Message> findByUId(Long uid);

    /**
     * 根据商城留言messageid删除（逻辑删除）商城留言
     * @parammessageId 商城留言messageid
     * @return
     */
    int removeMessage(Long messageid);

    /**
     * 批量删除商城会员
     * @parammessageIds
     * @return
     */
    int removeMessageBatch(List<Long> messageIds);

    void add(Message message);
}
