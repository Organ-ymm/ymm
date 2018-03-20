package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;
import com.ymm.pojo.vo.BrandQuery;

import java.util.List;

public interface BrandService {
    List<Brand> listBrandsByPage(Page page,BrandQuery query);

    Long countBrands(BrandQuery query);

    int brandDelById(Integer id);
}
