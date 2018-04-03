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

    @Autowired
    private CartService cartService;

    @Autowired
    private Order_goodsService orderGoodsService;
    @Autowired
    private DetailService detailService;

    /*
     * 购物车购买，生成订单表和订单商品表，同时删除购物车内相应的商品信息
     */
    @ResponseBody
    @RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
    public long submitOrder(@RequestParam("address_id") int address_id,@RequestParam("goods_ids[]") int[] goods_ids,@RequestParam("amounts[]") int[] amounts
                        , HttpSession session){

        //随机生成订单编号
        Date date=new Date();
        SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMddHHmmss");
        StringBuilder order_id1=new StringBuilder(sdf1.format(date));
        int order_id2=(int)((Math.random()* 9 +1)*1000);
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
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        if(k>0){    //若订单商品表插入成功，再插入订单表
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
            //订单生成成功了之后，将购物车内相应的商品删除
            cartService.delCart(goods_ids,user_id);
            return 1;
        }else{
            return 0;
        }

    }

    /*
         * 直接购买，生成订单表和订单商品表
         */
    @ResponseBody
    @RequestMapping(value = "/addOrder",method = RequestMethod.POST)
    public long addOrder(@RequestParam("address_id") int address_id,@RequestParam("goods_id") int goods_id,@RequestParam("amount") int amount
            , HttpSession session){

        //随机生成订单编号
        Date date=new Date();
        SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMddHHmmss");
        StringBuilder order_id1=new StringBuilder(sdf1.format(date));
        int order_id2=(int)(Math.random()*9999+1);
        long order_id=Long.parseLong((order_id1.append(order_id2)).toString());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String order_time=sdf.format(date);

        //将订单-商品信息插入订单商品表
        Goods good=detailService.selectById(goods_id);
        double subTotal=good.getShop_price()*amount;//计算订单的总价，为订单表做准备
        Order_goods orderGoods=new Order_goods();
        orderGoods.setOrder_id(order_id);
        orderGoods.setGoods_id(good.getGoods_id());
        orderGoods.setGoods_name(good.getGoods_name());
        orderGoods.setGoods_sn(good.getGoods_sn());
        orderGoods.setGoods_brief(good.getGoods_brief());
        orderGoods.setShop_price(good.getShop_price());
        orderGoods.setGoods_thumb(good.getGoods_thumb());
        orderGoods.setAmount(amount);
        int k=orderGoodsService.addOrderGoods(orderGoods);
        int ii=0;
        if(k>0){//若订单商品表插入成功，再插入订单表
            Orders order=new Orders();
            Users user= (Users) session.getAttribute("user");
            int user_id=user.getUser_id();
            Address address=addressService.findAddress(address_id,user_id);//得到订单中选中的地址
            order.setOrder_id(order_id);
            order.setUser_id(user_id);
            order.setOrder_time(order_time);
            order.setOrder_money(subTotal);
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

    /*
    * 得到用户下的订单，显示在待支付页面submitOrder上
    * */
    @ResponseBody
    @RequestMapping(value = "/getOrderByUserId",method = RequestMethod.POST)
    public Orders getOrderByUserId(HttpSession session){
        Users user= (Users) session.getAttribute("user");
        if(user!=null){
            int user_id=user.getUser_id();
            Orders order=orderService.getOrderByUserId(user_id);
            return order;
        }else{
            return null;
        }
    }

    /*
    * 订单支付，修改订单的pay_status为1
    * */
    @RequestMapping(value = "/payOrder",method = RequestMethod.POST)
   public String payOrder(@RequestParam("order_id")String order_idStr){
        long order_id=Long.parseLong(order_idStr);
        int i=orderService.updateOrderByOid(order_id);
        if(i>0){
            return "redirect:paySuccess";
        }else{
            return "redirect:payFailure";
        }
   }

    /*
    * 订单支付成功，跳转到支付成功页面
    * */
    @RequestMapping(value = "/paySuccess")
    public String toPaySuccess(){
        return "pages/orders/paySuccess";
    }
    /*
   * 订单支付失败，跳转到支付失败页面
   * */
    @RequestMapping(value = "/payFailure")
    public String toPayFailure(){
        return "pages/orders/payFailure";
    }

}
