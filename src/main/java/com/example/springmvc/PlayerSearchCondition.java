package com.example.springmvc;

public class PlayerSearchCondition {

    private String positionEqualTo;
    private String nameLike;

    public String getPositionEqualTo() {
        return positionEqualTo;
    }

    public void setPositionEqualTo(String positionEqualTo) {
        this.positionEqualTo = positionEqualTo;
    }

    public String getNameLike() {
        return nameLike;
    }

    public void setNameLike(String nameLike) {
        this.nameLike = nameLike;
    }
}