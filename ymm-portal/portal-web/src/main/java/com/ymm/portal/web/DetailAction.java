package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public class DetailAction {
    @Autowired
    private DetailService detailService;
    @RequestMapping(value = "/detailIndex.do")
    public String showDetailGoods(@RequestParam(value = "id") Integer id, Model model){
        Goods goods = null;
        try {
            goods = detailService.selectById(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        model.addAttribute("goods",goods);
        return "detailIndex";
    }
}
