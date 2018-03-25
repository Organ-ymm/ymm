package com.ymm.pojo.vo;

import com.ymm.commons.pojo.po.Users;

/**
 * Created by zy on 2018/3/21.
 */
public class UserCustom extends Users {
    private Integer rankSum;
    private String rank_name;

    public Integer getRankSum() {
        return rankSum;
    }

    public void setRankSum(Integer rankSum) {
        this.rankSum = rankSum;
    }

    public String getRank_name() {
        return rank_name;
    }

    public void setRank_name(String rank_name) {
        this.rank_name = rank_name;
    }
}
