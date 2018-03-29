package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Description:主要用于页面的跳转
 * Author: zy
 * Date: 2018/3/22 12:50
 * Version:1.0
 */
@Controller
public class PortalIndexAction {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(value="/index",method= RequestMethod.GET)
    public String indexshow(Model model){
        List<Goods> list1 = goodsService.listHotGoods(1);
        List<Goods> list2 = goodsService.listHotGoods(2);
        model.addAttribute("hot1",list1);
        model.addAttribute("hot2",list2);
        return "index";
    }

    @RequestMapping(value="/{page}",method= RequestMethod.GET)
    public String login(@PathVariable("page") String page){
        return page;
    }



    //@RequestMapping(value="/index1",method= RequestMethod.GET)
    //public String index1(Model model){
    //    //调用业务逻辑层方法查询首页轮播图
    //    //1、注入service
    //    //2、调用方法
    //    //3、创建service实现类（三步：先去redis集群中查询，若有，直接返回，若没有，先去mysql查，存入redis缓存）
    //    return "index1";
    //}

    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String login(){

        return "login";
    }

    @RequestMapping(value="/pages/{pageName}",method= RequestMethod.GET)
    public String forwardOne(@PathVariable("pageName") String pageName){
        return "pages/"+pageName;
    }

    @RequestMapping(value="/pages/{pageName1}/{pageName2}",method= RequestMethod.GET)
    public String forwardTwo(@PathVariable("pageName1") String pageName1,@PathVariable("pageName2") String pageName2){
        return "pages/"+pageName1+"/"+pageName2;
    }

}
