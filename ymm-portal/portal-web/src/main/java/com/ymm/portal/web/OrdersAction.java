package com.ymm.portal.web;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.service.OrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

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

    /*
        列出该用户的所有的地址列表
     */
    //@ResponseBody
    @RequestMapping(value = "/submitOrder",method = RequestMethod.POST)
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
    }

}
