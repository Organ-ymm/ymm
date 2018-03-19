package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;

import java.util.List;

public interface BrandService {
    List<Brand> listBrandsByPage(Page page);

    Long countBrands();

    int brandDelById(Integer id);
}
