package com.slwh.emr.model;

import java.util.Date;

public class Drug {
    private Integer drId;

    private String drNum;

    private String drName;

    private Integer drLevel;

    private String drPrice;

    private String drAccount;

    private Date drDate;

    private  Integer drStatus;

    public Integer getDrId() {
        return drId;
    }

    public void setDrId(Integer drId) {
        this.drId = drId;
    }

    public String getDrNum() {
        return drNum;
    }

    public void setDrNum(String drNum) {
        this.drNum = drNum == null ? null : drNum.trim();
    }

    public String getDrName() {
        return drName;
    }

    public void setDrName(String drName) {
        this.drName = drName == null ? null : drName.trim();
    }

    public Integer getDrLevel() {
        return drLevel;
    }

    public void setDrLevel(Integer drLevel) {
        this.drLevel = drLevel;
    }

    public String getDrPrice() {
        return drPrice;
    }

    public void setDrPrice(String drPrice) {
        this.drPrice = drPrice == null ? null : drPrice.trim();
    }

    public String getDrAccount() {
        return drAccount;
    }

    public void setDrAccount(String drAccount) {
        this.drAccount = drAccount == null ? null : drAccount.trim();
    }

    public Date getDrDate() {
        return drDate;
    }

    public void setDrDate(Date drDate) {
        this.drDate = drDate;
    }

    public Integer getDrStatus() {
        return drStatus;
    }

    public void setDrStatus(Integer drStatus) {
        this.drStatus = drStatus;
    }
}