package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Brand;
import com.ymm.pojo.vo.BrandQuery;
import com.ymm.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BrandAction {
    @Autowired
    private BrandService brandService;
    @ResponseBody
    @RequestMapping(value = "/brand")
    public MessageResult<Brand> listBrandsToJsonByPage(Page page, BrandQuery query){
        MessageResult<Brand> messageResult = new MessageResult<>();
        try {
            List<Brand> brands = brandService.listBrandsByPage(page,query);
            long count = brandService.countBrands(query);
            messageResult.setCode(0);
            messageResult.setCount(count);
            messageResult.setMsg("ymmSuccess");
            messageResult.setData(brands);
        }catch (Exception e){
            e.printStackTrace();
        }
        return messageResult;
    }
    @ResponseBody
    @RequestMapping(value = "/brand_del")
    public int brandDelById(@RequestParam(value = "id") Integer id){
        int i = 0;
        try {
            i = brandService.brandDelById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/brand_add")
    public int addBrand(Brand brand){
        int i = 0;
        try {
            i = brandService.addBrand(brand);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/brand_edit")
    public int editBrand(Brand brand){
        int i = 0;
        try {
            i = brandService.editBrand(brand);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
