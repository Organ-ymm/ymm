package com.ymm.commons.pojo.po;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/30 13:46
 * Version:1.0
 */
public class Order_goods {
    /*
CREATE TABLE `order_goods` (
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `amount` int(11) DEFAULT NULL COMMENT '商品数量',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名',
  `goods_sn` varchar(60) DEFAULT NULL COMMENT '商品规格',
  `goods_brief` varchar(200) DEFAULT NULL COMMENT '商品描述',
  `shop_price` double(10,2) DEFAULT NULL COMMENT '价格',
  `goods_thumb` varchar(100) DEFAULT NULL COMMENT '商品图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
*/
    private long order_id;
    private int goods_id;
    private int amount;
    private String goods_name;
    private String goods_sn;
    private String goods_brief;
    private double shop_price;
    private double market_price;
    private String goods_thumb;

    public long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(long order_id) {
        this.order_id = order_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_sn() {
        return goods_sn;
    }

    public void setGoods_sn(String goods_sn) {
        this.goods_sn = goods_sn;
    }

    public String getGoods_brief() {
        return goods_brief;
    }

    public void setGoods_brief(String goods_brief) {
        this.goods_brief = goods_brief;
    }

    public double getShop_price() {
        return shop_price;
    }

    public void setShop_price(double shop_price) {
        this.shop_price = shop_price;
    }

    public double getMarket_price() {
        return market_price;
    }

    public void setMarket_price(double market_price) {
        this.market_price = market_price;
    }

    public String getGoods_thumb() {
        return goods_thumb;
    }

    public void setGoods_thumb(String goods_thumb) {
        this.goods_thumb = goods_thumb;
    }
}
