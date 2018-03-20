package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.po.Rank;
import com.ymm.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/rank")
public class RankAction {
    @Autowired
    private RankService rService;

    /**
     * 列出所有的等级
     * */
    @ResponseBody
    @RequestMapping(value="/listrank",method = RequestMethod.GET)
    public MessageResult listrank(){
        MessageResult<Rank> messageResult=new MessageResult<>();
        List<Rank> rankList=rService.listRank();
        int count = rService.countRank();
        messageResult.setCode(0);
        messageResult.setMsg("success");
        messageResult.setData(rankList);
        messageResult.setCount(count);
        return messageResult;
    }
    /**
     * 添加等级
     * */
    @ResponseBody
    @RequestMapping(value="/addRank",method = RequestMethod.POST)
    public int addRank(Rank rank){
        int i=0;
        try {
            i=rService.addRank(rank);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

}
