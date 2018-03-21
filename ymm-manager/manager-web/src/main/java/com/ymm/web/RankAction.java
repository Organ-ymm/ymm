package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.po.Rank;
import com.ymm.service.RankService;
import org.apache.ibatis.annotations.Param;
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

    /**
     * 修改等级信息
     * */
    @ResponseBody
    @RequestMapping(value="/editRank",method=RequestMethod.POST)
    public int editRank(Rank rank){
        int i=0;
        try {
            i=rService.editRank(rank);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 删除等级前，验证是否可以删除
     */
    @ResponseBody
    @RequestMapping(value="/verifyRankId",method = RequestMethod.GET)
    public int verifyRankId(@Param("rank_id") int rank_id){
        int maxRankId=rService.findMaxRankId();
        if (rank_id==maxRankId){
            return 1;//可以删除
        }else{
            return 0;//不能删除
        }
    }

    /**
     * 删除等级
     */
    @ResponseBody
    @RequestMapping(value="/delRank",method = RequestMethod.GET)
    public int delRank(@Param("rank_id") int rank_id){
        int i =0;
        try{
            i =rService.delRank(rank_id);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 统计各个等级的用户总数
     */
    @ResponseBody
    @RequestMapping(value="/",method = RequestMethod.GET)
    public int count(@Param("rank_id") Integer rank_id){
        int maxRankId=rService.findMaxRankId();
        if (rank_id==maxRankId){
            return 1;//可以删除
        }else{
            return 0;//不能删除
        }
    }

}
