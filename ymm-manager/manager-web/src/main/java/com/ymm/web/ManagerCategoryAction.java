package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Category;
import com.ymm.pojo.po.Goods;
import com.ymm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/category")
public class ManagerCategoryAction {
    @Autowired
    private CategoryService categoryService;

    /**
     * 商品类别查询 s
     *
     * @param page
     * @return
     */
    @RequestMapping("/categorylist")
    @ResponseBody
    public MessageResult<Category> listCategoryToJson(Page page) {
        MessageResult<Category> messageResult = new MessageResult<>();
        try {
            int count = categoryService.countCate();
            List<Category> categoryList = categoryService.listCategory(page);
            messageResult.setCode(0);
            messageResult.setCount(count);
            messageResult.setMsg("success");
            messageResult.setData(categoryList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageResult;
    }

    /**
     * 添加分类 s f
     *
     * @return
     */
    @RequestMapping(value = "/category_add", method = RequestMethod.POST)
    @ResponseBody
    public int categoryAdd(Category category) {
        int i = 0;
        try {
            i = categoryService.cateAdd(category);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 分类修改
     *
     * @return
     */
    @RequestMapping("/category_edit")
    public String category_edit(int id, Model model) {
        Category category = null;
        try {
            category = categoryService.getCateById(id);
            model.addAttribute("category", category);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "forward:/pages/product/category_edit";
    }

    /**
     * 分类数据update
     */
    @RequestMapping("/category_editTo")
    @ResponseBody
    public int category_editTo(Category category) {
        int i = 0;
        try {
            i = categoryService.updateCate(category);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 根据id删除分类
     *
     * @param id
     * @return
     */
    @RequestMapping("/category_del")
    @ResponseBody
    public int categoryDelById(@RequestParam(value = "id") Integer id) {
        int i = 0;
        try {
            i = categoryService.cateDelById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }




}
