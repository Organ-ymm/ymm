package com.ymm.dao;

import com.ymm.pojo.po.Rank;

import java.util.List;

public interface RankMapper {

    List<Rank> listRank();

    Integer countRank();

    Integer addRank(Rank rank);

    Integer editRank(Rank rank);
}
