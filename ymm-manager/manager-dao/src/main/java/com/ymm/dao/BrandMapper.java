package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;
import com.ymm.pojo.vo.BrandQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BrandMapper {
    List<Brand> selectBrandByPage(@Param("page") Page page, @Param("query") BrandQuery query);

    long countBrands(@Param("query")BrandQuery query);

    int brandDelById(Integer id);
}
