package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.vo.GoodsCustom;
import com.ymm.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/goods")
public class ManagerGoodsAction {
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/goodslist")
    @ResponseBody
    public MessageResult<GoodsCustom> listGoodsToJson(Page page){
        //从后台把所有商品的数据查询到List，把List封装MessageResult
        MessageResult<GoodsCustom> messageResult = new MessageResult<>();
        try {
            Long count = goodsService.countItems();
            List<GoodsCustom> goodsCustomList = goodsService.listGoods(page);
            messageResult.setCode(0);
            messageResult.setCount(count);
            messageResult.setData(goodsCustomList);
            messageResult.setMsg("success");
        }catch (Exception e){
            e.printStackTrace();
        }
        return messageResult;
    }
}
