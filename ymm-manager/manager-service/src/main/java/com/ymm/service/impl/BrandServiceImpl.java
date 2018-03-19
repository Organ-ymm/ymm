package com.ymm.service.impl;

import com.ymm.dao.BrandMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;
import com.ymm.service.BrandService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BrandServiceImpl implements BrandService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BrandMapper brandMapper;
    @Override
    public List<Brand> listBrandsByPage(Page page) {
        List<Brand> brands = null;
        try {
            brands = brandMapper.selectBrandByPage(page);
        }catch (Exception e){
            logger.debug(e.getMessage(),e);
        }

        return brands;
    }

    @Override
    public Long countBrands() {
        long count = 0;
        try {
            count = brandMapper.countBrands();
        }catch (Exception e){
            logger.debug(e.getMessage(),e);
        }
        return count;
    }

    @Override
    public int brandDelById(Integer id) {
        int i = 0;
        try {
            i = brandMapper.brandDelById(id);
        }catch (Exception e){
            logger.debug(e.getMessage(),e);
        }
        return i;
    }
}
