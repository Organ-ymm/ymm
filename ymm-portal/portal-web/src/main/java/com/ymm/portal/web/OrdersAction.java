package com.ymm.portal.web;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.service.AddressService;
import com.ymm.portal.service.OrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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

    @ResponseBody
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
    }

}
