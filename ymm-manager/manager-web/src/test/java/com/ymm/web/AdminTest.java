/*
package com.ymm.web;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import com.ymm.pojo.vo.AdminQuery;
import com.ymm.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
@WebAppConfiguration("src/main/resources")
public class AdminTest {
    @Autowired
    AdminService as;
    @Test
    public void pageQuery(){
        Page page = new Page();
        page.setLimit(5);
        page.setPage(1);
        AdminQuery adminQuery = new AdminQuery();
        adminQuery.setAdQueryName("a");
        List<Admin> admins = as.selectAllAdmin(page, adminQuery);
        System.out.println(admins.size());
    }
    @Test
    public void addAdmin(){
        Admin admin = new Admin();
        admin.setAd_email("asasd");
        admin.setAd_password("123");
        admin.setAd_phone("123123");
        //admin.setAd_rank("gaojiguanliyuan");
        Date date = new Date();
        SimpleDateFormat simpleDate = new SimpleDateFormat();
        simpleDate.format(date);
        admin.setAd_addTime(date);
        admin.setAd_status(1);
        admin.setAd_username("gaoji");
        as.addAdmin(admin);
    }
}
*/
