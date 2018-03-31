package com.ymm.portal.web;
import com.ymm.commons.pojo.po.Goods;
import com.ymm.commons.pojo.po.Order_goods;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 18:11
 * Version:1.0
 */
@Controller
@RequestMapping("/orders")
public class OrdersAction {
    @Autowired
    private OrdersService orderService;

    @Autowired
    private AddressService addressService;
    /*
        列出该用户的所有的地址列表
     */
    //@ResponseBody
    /*@RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
    public String addOrder(@Param("order") Orders order, HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        order.setUser_id(user_id);
        try {
            //orderService.addOrder(user_id,receiver_address,receiver_name,receiver_phone,order_money);
            orderService.addOrder(order);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "pages/orders/submitOrder";
    }*/

    /*@ResponseBody
    @RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
    public String addOrder(@RequestParam("address_id") int address_id,@RequestParam("order_money") double order_money, HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        //得到订单中选中的地址
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        Address address=addressService.findAddress(address_id,user_id);
        //添加订单
        Orders order=new Orders();
        order.setUser_id(user_id);
        order.setOrder_money(order_money);
        order.setReceiver_name(address.getConsignee());
        order.setReceiver_address(address.getProvince()+address.getCity()+address.getCounty()+address.getStreet()+" 邮编："+address.getZipcode());
        order.setReceiver_phone(address.getPhone());
        long order_id;
        try {
            int i=orderService.addOrder(order);
            if(i>0){
                order_id=order.getOrder_id();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "order_id";
    }*/

    @Autowired
    private Order_goodsService orderGoodsService;
    @Autowired
    private DetailService detailService;
    /*@ResponseBody
    @RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
    public long addOrder(@RequestParam("address_id") int address_id,@RequestParam("goods_ids[]") int[] goods_ids,@RequestParam("amounts[]") int[] amounts, HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        //得到订单中选中的地址
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        Address address=addressService.findAddress(address_id,user_id);
        //添加订单
        Orders order=new Orders();
        order.setUser_id(user_id);
        double order_money=0;
        for(int i=0;i<goods_ids.length;i++){
            for(int j=0;j<amounts.length;j++){
                double subTotal=0;
                if(i==j){
                    Goods good=detailService.selectById(goods_ids[i]);
                    subTotal=good.getShop_price()*amounts[i];//计算订单的总价
                }
                order_money+=subTotal;
            }
        }
        order.setOrder_money(order_money);
        order.setReceiver_name(address.getConsignee());
        order.setReceiver_address(address.getProvince()+address.getCity()+address.getCounty()+address.getStreet()+" 邮编："+address.getZipcode());
        order.setReceiver_phone(address.getPhone());
        long order_id=0;
        int k=0;
        try {
            int ii=orderService.addOrder(order);
            if(ii>0){//若订单表保存成功
                order_id=order.getOrder_id();
                for(int i=0;i<goods_ids.length;i++){
                    for(int j=0;j<amounts.length;j++){
                        if(i==j){
                            Goods good=detailService.selectById(goods_ids[i]);
                            Order_goods orderGoods=new Order_goods();
                            orderGoods.setOrder_id(order_id);
                            orderGoods.setGoods_id(good.getGoods_id());
                            orderGoods.setGoods_name(good.getGoods_name());
                            orderGoods.setGoods_sn(good.getGoods_sn());
                            orderGoods.setGoods_brief(good.getGoods_brief());
                            orderGoods.setShop_price(good.getShop_price());
                            orderGoods.setGoods_thumb(good.getGoods_thumb());
                            orderGoods.setAmount(amounts[i]);
                            k=orderGoodsService.addOrderGoods(orderGoods);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(k>0) {//若订单——商品表数据保存成功，得到订单信息
            return order_id;
        }else{
            return 0;
        }
    }*/

    @ResponseBody
    @RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
    public long addOrder(@RequestParam("address_id") int address_id,@RequestParam("goods_ids[]") int[] goods_ids,@RequestParam("amounts[]") int[] amounts
                        , HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);


        //随机生成订单编号
        Date date=new Date();
        SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMddHHmmss");
        StringBuilder order_id1=new StringBuilder(sdf1.format(date));
        int order_id2=(int)(Math.random()*9999+1);
        long order_id=Long.parseLong((order_id1.append(order_id2)).toString());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String order_time=sdf.format(date);

        int k=0;
        double order_money=0;//订单总价
        for(int i=0;i<goods_ids.length;i++){//将订单-商品信息插入订单商品表
            for(int j=0;j<amounts.length;j++){
                double subTotal=0;
                if(i==j){
                    Goods good=detailService.selectById(goods_ids[i]);
                    subTotal=good.getShop_price()*amounts[i];//计算订单的总价，为订单表做准备

                    Order_goods orderGoods=new Order_goods();
                    orderGoods.setOrder_id(order_id);
                    orderGoods.setGoods_id(good.getGoods_id());
                    orderGoods.setGoods_name(good.getGoods_name());
                    orderGoods.setGoods_sn(good.getGoods_sn());
                    orderGoods.setGoods_brief(good.getGoods_brief());
                    orderGoods.setShop_price(good.getShop_price());
                    orderGoods.setGoods_thumb(good.getGoods_thumb());
                    orderGoods.setAmount(amounts[i]);
                    k=orderGoodsService.addOrderGoods(orderGoods);
                }
                order_money+=subTotal;
            }
        }
        int ii=0;
        if(k>0){//若订单商品表插入成功，再插入订单表
            Users user= (Users) session.getAttribute("user");
            int user_id=user.getUser_id();
            Address address=addressService.findAddress(address_id,user_id);//得到订单中选中的地址
            Orders order=new Orders();
            order.setOrder_id(order_id);
            order.setUser_id(user_id);
            order.setOrder_time(order_time);
            order.setOrder_money(order_money);
            order.setReceiver_name(address.getConsignee());
            order.setReceiver_address(address.getProvince()+address.getCity()+address.getCounty()+address.getStreet()+" 邮编："+address.getZipcode());
            order.setReceiver_phone(address.getPhone());
            ii=orderService.addOrder(order);//保存订单表
        }
        if(ii>0) {//若订单表数据保存成功
            return 1;
        }else{
            return 0;
        }

    }

    @ResponseBody
    @RequestMapping(value = "/getOrderByUserId",method = RequestMethod.POST)
    public Orders getOrderByUserId(HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        Orders order=orderService.getOrderByUserId(user_id);
        return order;
    }

}
