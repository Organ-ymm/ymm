package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.OrdersQuery;
import com.ymm.pojo.dto.Page;

import com.ymm.commons.pojo.po.Orders;
import com.ymm.pojo.dto.SwitchCheck;
import com.ymm.service.OrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
@RequestMapping("/order")
public class OrdersAction {
@Autowired
    OrdersService ordersService;
    @ResponseBody
    @RequestMapping(value="/listorders",method= RequestMethod.GET)
    public MessageResult ordersListToJson(@Param("page") Page page, @Param("ordersQuery") OrdersQuery ordersQuery){

       System.out.println("***************************************************");
        System.out.println(page);
        System.out.println(ordersQuery);
        MessageResult<Orders> messageResult =new MessageResult<>();
        ordersQuery.setPay_status(1);
        try {
            List<Orders> ordersList = ordersService.selectAllOrders(page,ordersQuery);
            int count = ordersService.countOrders(ordersQuery);
            messageResult.setCode(0);
            messageResult.setCount(count);
            messageResult.setMsg("success");
            messageResult.setData(ordersList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageResult;
    }
    @ResponseBody
    @RequestMapping(value = "/UpdateDelierStatusById")
    public int UpdateDelierStatusById(@RequestParam("id") Integer id) {
        int i = 0;
        try {
            i = ordersService.UpdateDelierStatusById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    @RequestMapping(value = "/AllUpdateDelStatusById",method=RequestMethod.POST)
    @ResponseBody
    public Integer AllUpdateDelStatusById(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = ordersService.AllUpdateDelStatusById(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @RequestMapping(value = "/orders_update")
    @ResponseBody
    public int UpdateOrders(Orders orders,Model model){
        int i = 0;
        try {
            i=ordersService.UpdateOrders(orders);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @RequestMapping(value = "/updateOrdersStatus", method = RequestMethod.GET)
    @ResponseBody
    public int updateOrdersStatus(SwitchCheck switchCheck){
        System.out.println(switchCheck);
        System.out.println("sdahsjhdasdddddddddddddddddddddddddddddg****************************************8");
        int i = 0;
        try {
            i = ordersService.updateOrdersStatus(switchCheck);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
}

