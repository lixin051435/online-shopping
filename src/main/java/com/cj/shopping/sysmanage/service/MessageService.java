package com.cj.shopping.sysmanage.service;

import com.cj.shopping.common.dao.PageParam;
import com.cj.shopping.sysmanage.entity.Message;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * 类描述：处理商城留言的服务层接口
 * 类名称：MessageService
 */
public interface MessageService {
    /**
     * 统计所有商城留言的数目(未删除的)
     * @return
     */
    Long countMessage();

    /**
     * 通过商城留言id获取商城留言的详细信息
     * @parammessageid 商城留言messageid
     * @return
     */
    Message getMessageByMessageId(Long messageid);

    /**
     * 根据留言已知信息分页查询商城留言列表
     * @parammessage 留言信息
     * @param pageParam 分页对象
     * @return 包含留言信息的PageInfo对象
     */
    PageInfo<Message> listMessage(Message message, PageParam pageParam);

    /**
     * 根据已有信息查询商城留言列表
     * @parammessage
     * @return 符合条件的商城留言列表
     */
    List<Message> listMessage(Message message);

    /**
     * 根据商城留言id删除（逻辑删除）商城留言
     * @parammessageId 商城留言messageid
     * @return
     */
    boolean removeMessage(Long messageid);

    /**
     * 批量删除商城留言
     * @parammessageIds 商城留言messageid集合
     * @return
     */
    boolean removeMessageBatch(List<Long> messageIds);

    List<Message> findByUId(Long uid);

    void add(Message messageObject);
}
