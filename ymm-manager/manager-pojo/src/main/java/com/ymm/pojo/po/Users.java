package com.ymm.pojo.po;

public class Users {
    private int user_id;
    private String email;
    private String username;
    private String password;
    private String alias;
    private Integer sex;
    private String birthday;
    private Integer pay_points;
    private Integer rank_points;
    private Integer rank_id;
    private Integer address_id;
    private String reg_time;
    private Long mobile_phone;
    private Integer status;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public Integer getRank_points() {
        return rank_points;
    }

    public void setRank_points(Integer rank_points) {
        this.rank_points = rank_points;
    }

    public Integer getRank_id() {
        return rank_id;
    }

    public void setRank_id(Integer rank_id) {
        this.rank_id = rank_id;
    }

    public Integer getAddress_id() {
        return address_id;
    }

    public void setAddress_id(Integer address_id) {
        this.address_id = address_id;
    }

    public String getReg_time() {
        return reg_time;
    }

    public void setReg_time(String reg_time) {
        this.reg_time = reg_time;
    }

    public Long getMobile_phone() {
        return mobile_phone;
    }

    public void setMobile_phone(Long mobile_phone) {
        this.mobile_phone = mobile_phone;
    }
}
