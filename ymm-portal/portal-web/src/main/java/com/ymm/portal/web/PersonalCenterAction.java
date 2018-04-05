package com.ymm.portal.web;

import com.ymm.commons.dto.Page;
import com.ymm.commons.pojo.po.Address;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PersonalCenterAction {
    @Autowired
    UserService userService;

    @RequestMapping("/pages/user/personalCenter")
    public String toPersonalCenter(HttpSession session, Model model){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            List<Order> payOrders=  userService.getPayOrder(user);
            List<Order > deliverOrders=  userService.getDeliverOrder(user);
            if(payOrders!=null){
                model.addAttribute("payOrders",payOrders);
            }
            if(deliverOrders!=null){
                model.addAttribute("deliverOrders",deliverOrders);
            }
        }
        return "pages/user/personalCenter";
    }

    //我的订单列表
    @RequestMapping("/pages/orders/myOrder")
    public String myOrder(HttpSession session, Model model, Page page){
       /* if(page.getLimit()==0){
            page.setLimit(5);
        }
        if(page.getPage()==0){
            page.setPage(1);
        }*/
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            //int countTotal = userService.countOrder(user);
            List<Orders> orders = userService.selectOrdersAndGoods(user);
            if(orders!=null){
                //model.addAttribute("countTotal",countTotal);
                model.addAttribute("orders",orders);
            }
        }
        return "pages/orders/myOrder";
    }

    //收货地址列表列表
    @RequestMapping("addressList")
    public String addressList(HttpSession session, Model model){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            List<Address> addresses = userService.addressList(user);

            if(addresses!=null){
                model.addAttribute("addresses",addresses);
            }
        }
        return "pages/user/address";
    }
    //新增地址
    @ResponseBody
    @RequestMapping("addAddress")
    public int addAddress(HttpSession session,Address address){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
           try{
               userService.addAddress(address);
               return 1;
           }catch (Exception e){
               e.printStackTrace();
               return 0;
           }

        }
        return 0;
    }
    //更新地址
    @ResponseBody
    @RequestMapping("editAddress")
    public int updateAddress(HttpSession session, Address address){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            try {
                userService.updateAddress(address);
                return 1;
            }catch (Exception e){
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }
    //获取地址
    @ResponseBody
    @RequestMapping("getAddress")
    public Address getAddress(HttpSession session, Address address){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            try{
                Address address1 = userService.getAddress(address);
                return address1;
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
    //获取地址
    @ResponseBody
    @RequestMapping("delAddress")
    public int delAddress(HttpSession session, Address address){
        Users user = (Users)session.getAttribute("user");
        if(user!=null){
            try{
                userService.delAddress(address);
                return 1;
            }catch (Exception e){
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

}
