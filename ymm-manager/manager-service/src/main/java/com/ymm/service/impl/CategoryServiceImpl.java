package com.ymm.service.impl;

import com.ymm.dao.CategoryMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Category;
import com.ymm.pojo.po.Goods;
import com.ymm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryDao;

    @Override
    public List<Category> listCategory(Page page) {
        return categoryDao.selectAllCategory(page);
    }

    @Override
    public List<Goods> listGoods(Page page) {
        return categoryDao.selectAllGoods(page);
    }

    @Override
    public int cateDelById(Integer id) {
        return categoryDao.updateCateStatusById(id);
    }

    @Override
    public int countCate() {
        return categoryDao.countCate();
    }

    @Override
    public int cateAdd(Category category) {
        return categoryDao.insertCate(category);
    }

    @Override
    public Category getCateById(int id) {
        return categoryDao.selectCateById(id);
    }

    @Override
    public int updateCate(Category category) {
       return  categoryDao.updateCate(category);
    }
}
