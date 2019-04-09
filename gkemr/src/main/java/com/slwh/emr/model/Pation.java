package com.slwh.emr.model;

public class Pation {
    private Integer pId;

    private String pName;

    private String pSex;

    private Integer pAge;

    private Integer pTel;

    private String mrNum;

    private Integer status;

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpSex() {
        return pSex;
    }

    public void setpSex(String pSex) {
        this.pSex = pSex == null ? null : pSex.trim();
    }

    public Integer getpAge() {
        return pAge;
    }

    public void setpAge(Integer pAge) {
        this.pAge = pAge;
    }

    public Integer getpTel() {
        return pTel;
    }

    public void setpTel(Integer pTel) {
        this.pTel = pTel;
    }

    public String getMrNum() {
        return mrNum;
    }

    public void setMrNum(String mrNum) {
        this.mrNum = mrNum == null ? null : mrNum.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}