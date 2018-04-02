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

    /**
     *
     * @param user_id 当前用户id
     * @param address_id 地址id
     * @return 当前用户选择的结算地址
     */
    Address findAddress(int address_id,int user_id);

    /**
     * 添加收货地址
     * @param user_id
     * @return
     */
    int addAddress(int user_id);
}
