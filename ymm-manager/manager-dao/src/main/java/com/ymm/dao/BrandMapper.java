package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;

import java.util.List;

public interface BrandMapper {
    List<Brand> selectBrandByPage(Page page);

    long countBrands();

    int brandDelById(Integer id);
}
