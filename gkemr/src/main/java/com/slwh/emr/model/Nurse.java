package com.slwh.emr.model;

public class Nurse {
    private Integer nId;

    private String nLevel;

    public Integer getnId() {
        return nId;
    }

    public void setnId(Integer nId) {
        this.nId = nId;
    }

    public String getnLevel() {
        return nLevel;
    }

    public void setnLevel(String nLevel) {
        this.nLevel = nLevel == null ? null : nLevel.trim();
    }
}