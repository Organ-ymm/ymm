package com.ymm.portal.dao;

import com.ymm.portal.pojo.po.Address;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 14:46
 * Version:1.0
 */
public interface AddressMapper {
    List<Address> listAddress(int user_id);
}
