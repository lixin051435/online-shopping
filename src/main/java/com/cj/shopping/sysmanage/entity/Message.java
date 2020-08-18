package com.cj.shopping.sysmanage.entity;

import java.io.Serializable;
import java.util.Date;

//类描述：留言实体类
//类名称：Message
public class Message implements Serializable {
    private Long messageid;
    private String message;
    private Date messagedate;
    private Long id;
    private Integer delFlag;

    public Long getMessageid() {
        return messageid;
    }

    public void setMessageid(Long messageid) {
        this.messageid = messageid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getMessagedate() {
        return messagedate;
    }

    public void setMessagedate(Date messagedate) {
        this.messagedate = messagedate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "Message{" +
                "messageid=" + messageid +
                ", message='" + message + '\'' +
                ", messagedate=" + messagedate +
                ", id=" + id +
                ", delFlag=" + delFlag +
                '}';
    }
}
