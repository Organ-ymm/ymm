package com.ymm.portal.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Description:主要用于页面的跳转
 * Author: zy
 * Date: 2018/3/22 12:50
 * Version:1.0
 */
@Controller
public class PortalIndexAction {

    @RequestMapping(value="/{page}",method= RequestMethod.GET)
    public String index(@PathVariable("page") String page){
        return page;
    }

}
