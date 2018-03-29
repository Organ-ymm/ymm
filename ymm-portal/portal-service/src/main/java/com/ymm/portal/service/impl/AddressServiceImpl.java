package com.ymm.portal.service.impl;

import com.ymm.portal.dao.AddressMapper;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.service.AddressService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 14:44
 * Version:1.0
 */
@Service
public class AddressServiceImpl implements AddressService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public List<Address> listAddress(int user_id) {
        List<Address> addressList=addressMapper.listAddress(user_id);
        return addressList;
    }
}
