package com.slwh.emr.model;

public class Treat {
    private Integer tId;

    private String tLevel;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettLevel() {
        return tLevel;
    }

    public void settLevel(String tLevel) {
        this.tLevel = tLevel == null ? null : tLevel.trim();
    }
}