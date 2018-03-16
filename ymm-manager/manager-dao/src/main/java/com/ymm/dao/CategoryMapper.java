package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Category;
import com.ymm.pojo.po.Goods;


import java.util.List;

public interface CategoryMapper {
    List<Category> selectAllCategory(Page page);

    List<Goods> selectAllGoods(Page page);

    int updateCateStatusById(Integer id);

    int countCate();

    int insertCate(Category category);

    Category selectCateById(int id);

    int updateCate(Category category);
}
