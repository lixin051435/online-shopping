package com.cj.shopping.sysmanage.entity;

import java.util.Date;

public class Order {
    private Integer oid;

    private Double money;

    private Integer state;

    private String receiveinfo;

    private String phonum;

    private Date orderTime;

    private Integer userId;

    private String accepter;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getReceiveinfo() {
        return receiveinfo;
    }

    public void setReceiveinfo(String receiveinfo) {
        this.receiveinfo = receiveinfo == null ? null : receiveinfo.trim();
    }

    public String getPhonum() {
        return phonum;
    }

    public void setPhonum(String phonum) {
        this.phonum = phonum == null ? null : phonum.trim();
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAccepter() {
        return accepter;
    }

    public void setAccepter(String accepter) {
        this.accepter = accepter == null ? null : accepter.trim();
    }
}