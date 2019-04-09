package com.slwh.emr.model;

public class Permission {
    private Integer peId;

    private String peName;

    public Integer getPeId() {
        return peId;
    }

    public void setPeId(Integer peId) {
        this.peId = peId;
    }

    public String getPeName() {
        return peName;
    }

    public void setPeName(String peName) {
        this.peName = peName == null ? null : peName.trim();
    }
}