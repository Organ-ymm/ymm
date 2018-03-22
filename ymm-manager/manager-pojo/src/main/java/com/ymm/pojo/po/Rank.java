package com.ymm.pojo.po;

public class Rank {
    private Integer rank_id;
    private String rank_name;
    private Integer points;
    private Double discount;

    public Integer getRank_id() {
        return rank_id;
    }

    public void setRank_id(Integer rank_id) {
        this.rank_id = rank_id;
    }

    public String getRank_name() {
        return rank_name;
    }

    public void setRank_name(String rank_name) {
        this.rank_name = rank_name;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}
