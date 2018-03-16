package com.ymm.pojo.po;

public class Admin {
    int ad_id;
    String ad_username;
    String ad_password;
    //登录名	手机	邮箱	角色	加入时间	状态
    String ad_phone;
    String ad_email;
    String ad_role;
    String ad_joinTime;
    String ad_status;

    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public String getAd_username() {
        return ad_username;
    }

    public void setAd_username(String ad_username) {
        this.ad_username = ad_username;
    }

    public String getAd_password() {
        return ad_password;
    }

    public void setAd_password(String ad_password) {
        this.ad_password = ad_password;
    }

    public String getAd_phone() {
        return ad_phone;
    }

    public void setAd_phone(String ad_phone) {
        this.ad_phone = ad_phone;
    }

    public String getAd_email() {
        return ad_email;
    }

    public void setAd_email(String ad_email) {
        this.ad_email = ad_email;
    }

    public String getAd_role() {
        return ad_role;
    }

    public void setAd_role(String ad_role) {
        this.ad_role = ad_role;
    }

    public String getAd_joinTime() {
        return ad_joinTime;
    }

    public void setAd_joinTime(String ad_joinTime) {
        this.ad_joinTime = ad_joinTime;
    }

    public String getAd_status() {
        return ad_status;
    }

    public void setAd_status(String ad_status) {
        this.ad_status = ad_status;
    }
}
