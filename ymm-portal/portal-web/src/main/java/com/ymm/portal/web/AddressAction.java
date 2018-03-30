//package com.ymm.portal.web;
//
//import com.ymm.commons.pojo.po.Users;
//import com.ymm.portal.pojo.po.Address;
//import com.ymm.portal.service.AddressService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import javax.servlet.http.HttpSession;
//import java.util.List;
//
///**
// * Description:
// * Author: zy
// * Date: 2018/3/28 14:11
// * Version:1.0
// */
//@Controller
//@RequestMapping("/address")
//public class AddressAction {
//    @Autowired
//    private AddressService addressService;
//
//    /*
//        列出该用户的所有的地址列表
//     */
//    @ResponseBody
//    @RequestMapping(value = "/findAddress",method = RequestMethod.POST)
//    public List<Address> findAddress(@RequestParam("address_id") int address_id, HttpSession session){
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);
//
//        Users user= (Users) session.getAttribute("user");
//        int user_id=user.getUser_id();
//        List<Address> addressList = addressService.listAddress(user_id);
//        return addressList;
//    }
//
//    /*//@ResponseBody
//    @RequestMapping(value="/listCustomCart",method= RequestMethod.GET)
//    public String listCustomCart(HttpSession session,Model model){
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);
//
//        Users user= (Users) session.getAttribute("user");
//        List<CartCustom> customCartList = cartService.listCustomCart(user.getUser_id());
//        model.addAttribute("customCartList",customCartList);
//        return "pages/cart/cartlist";
//    }*/
//
//
//}
