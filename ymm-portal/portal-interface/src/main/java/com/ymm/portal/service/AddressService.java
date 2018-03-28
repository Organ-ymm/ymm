package com.ymm.portal.service;

import com.ymm.portal.pojo.po.Address;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 14:15
 * Version:1.0
 */
public interface AddressService {

    /**
     *
     * @param user_id 当前用户id
     * @return 当前用户的地址列表
     */
    List<Address> listAddress(int user_id);
}
