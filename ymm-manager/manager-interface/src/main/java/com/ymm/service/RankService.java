package com.ymm.service;

import com.ymm.pojo.po.Rank;

import java.util.List;

public interface RankService {

    List<Rank> listRank();

    Integer countRank();

    Integer addRank(Rank rank);
}
