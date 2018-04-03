package com.ymm.commons.pojo.po;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Orders implements Serializable {
    /**
     * CREATE TABLE `orders` (
     `order_id` bigint(20) NOT NULL COMMENT '订单编号',
     `user_id` int(11) DEFAULT NULL COMMENT '下单会员id',
     `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
     `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址',
     `receiver_phone` int(11) DEFAULT NULL COMMENT '收件人电话',
     `order_time` date DEFAULT NULL COMMENT '下单时间',
     `order_money` double(10,2) DEFAULT NULL COMMENT '订单总金额',
     `pay_status` int(1) DEFAULT NULL COMMENT '支付状态：-1待发货,0待收货，1已完成',
     `deliver_status` int(1) DEFAULT NULL COMMENT '发货状态：-1支付失败，0未付款,1支付成功',
     PRIMARY KEY (`order_id`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     */
    private Long order_id;
    private Integer user_id;
    private String receiver_name;
    private String receiver_address;
    private Long receiver_phone;
    private String order_time;
    private Double order_money;
    private Integer pay_status;
    private Integer deliver_status;
    List<Order_goods> order_goodsList;
    public Long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Long order_id) {
        this.order_id = order_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getReceiver_name() {
        return receiver_name;
    }

    public void setReceiver_name(String receiver_name) {
        this.receiver_name = receiver_name;
    }

    public String getReceiver_address() {
        return receiver_address;
    }

    public void setReceiver_address(String receiver_address) {
        this.receiver_address = receiver_address;
    }

    public Long getReceiver_phone() {
        return receiver_phone;
    }

    public void setReceiver_phone(Long receiver_phone) {
        this.receiver_phone = receiver_phone;
    }

    public String getOrder_time() {
        return order_time;
    }

    public void setOrder_time(String order_time) {
        this.order_time = order_time;
    }

    public Double getOrder_money() {
        return order_money;
    }

    public void setOrder_money(Double order_money) {
        this.order_money = order_money;
    }

    public Integer getPay_status() {
        return pay_status;
    }

    public void setPay_status(Integer pay_status) {
        this.pay_status = pay_status;
    }

    public Integer getDeliver_status() {
        return deliver_status;
    }

    public void setDeliver_status(Integer deliver_status) {
        this.deliver_status = deliver_status;
    }

    public List<Order_goods> getOrder_goodsList() {
        return order_goodsList;
    }

    public void setOrder_goodsList(List<Order_goods> order_goodsList) {
        this.order_goodsList = order_goodsList;
    }
}
