package com.ymm.commons.pojo.dto;

/**
 * Description:
 * Author: zy
 * Date: 2018/4/4 20:06
 * Version:1.0
 */
public class ResultObject {
    private boolean success;
    private String message;
    private Object data;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
