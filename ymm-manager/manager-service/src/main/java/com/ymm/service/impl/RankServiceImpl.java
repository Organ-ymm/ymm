package com.ymm.service.impl;

import com.ymm.dao.RankMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Rank;
import com.ymm.pojo.vo.UserCustom;
import com.ymm.service.RankService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RankServiceImpl implements RankService {

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RankMapper rMapper;

    /**
     * 列出所有的等级
     * */


    @Override
    public List<Rank> listRank() {
        List<Rank> rankList= null;
        try {
            rankList = rMapper.listRank();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rankList;
    }

    /**
     * 计算等级的数量
     * */
    @Override
    public Integer countRank() {
        int count= 0;
        try {
            count = rMapper.countRank();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    /**
     * 添加等级
     * */
    @Override
    public Integer addRank(Rank rank) {
        int i=0;
        try {
            i=rMapper.addRank(rank);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 修改等级信息
     * */
    @Override
    public Integer editRank(Rank rank) {
        int i=0;
        try {
            i=rMapper.editRank(rank);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     *
     * @param：等级ID
     * @return：数据库中最大的等级ID
     */
    @Override
    public Integer findMaxRankId() {
        int maxRankId= 0;
        try {
            maxRankId = rMapper.findMaxRankId();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return maxRankId;
    }

    /**
     *
     * @param rank_id：等级ID
     * @return：删除后影响的行数
     */
    @Override
    public Integer delRank(Integer rank_id) {
        int i=0;
        try {
            Rank rank=new Rank();
            rank.setRank_id(rank_id);
            i=rMapper.delRank(rank);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     *
     * @return 返回带有等级id，等级名字和等级人数的list
     */

    @Override
    public List<UserCustom> ListRankSum() {
        List<UserCustom> rankSumList=null;
        try {
            rankSumList=rMapper.ListRankSum();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rankSumList;
    }
}
