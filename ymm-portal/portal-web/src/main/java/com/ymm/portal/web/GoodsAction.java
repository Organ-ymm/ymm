package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.pojo.vo.GoodsCustom;
import com.ymm.portal.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RequestMapping("/goods")
@Controller
public class GoodsAction {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/listGoods")
    public String listGoods(GoodsCustom goodsCustom, Model model){
        goodsCustom = goodsService.listGoods(goodsCustom);
        model.addAttribute("goodsCustom",goodsCustom);
        return "pages/goods/listGoods";
    }
}
