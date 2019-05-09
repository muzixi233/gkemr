package com.slwh.emr.model;

import java.util.Date;

public class Mr {
    private Integer blId;

    private String blNum;

    private String blStyle;

    private String blMsg;

    private Integer status;

    private String blHistory;

    private Integer blPatient;

    private Integer blUser;

    private Integer blDrug;

    private Integer blZldj;

    private Integer blHuli;

    private String blBed;

    private Pation pation;

    private Date date;
    private User user;

    public Integer getBlId() {
        return blId;
    }

    public void setBlId(Integer blId) {
        this.blId = blId;
    }

    public String getBlNum() {
        return blNum;
    }

    public void setBlNum(String blNum) {
        this.blNum = blNum == null ? null : blNum.trim();
    }

    public String getBlStyle() {
        return blStyle;
    }

    public void setBlStyle(String blStyle) {
        this.blStyle = blStyle == null ? null : blStyle.trim();
    }

    public String getBlMsg() {
        return blMsg;
    }

    public void setBlMsg(String blMsg) {
        this.blMsg = blMsg == null ? null : blMsg.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getBlHistory() {
        return blHistory;
    }

    public void setBlHistory(String blHistory) {
        this.blHistory = blHistory == null ? null : blHistory.trim();
    }

    public Integer getBlPatient() {
        return blPatient;
    }

    public void setBlPatient(Integer blPatient) {
        this.blPatient = blPatient;
    }

    public Integer getBlUser() {
        return blUser;
    }

    public void setBlUser(Integer blUser) {
        this.blUser = blUser;
    }

    public Integer getBlDrug() {
        return blDrug;
    }

    public void setBlDrug(Integer blDrug) {
        this.blDrug = blDrug;
    }

    public Integer getBlZldj() {
        return blZldj;
    }

    public void setBlZldj(Integer blZldj) {
        this.blZldj = blZldj;
    }

    public Integer getBlHuli() {
        return blHuli;
    }

    public void setBlHuli(Integer blHuli) {
        this.blHuli = blHuli;
    }

    public String getBlBed() {
        return blBed;
    }

    public void setBlBed(String blBed) {
        this.blBed = blBed;
    }

    public Pation getPation() {
        return pation;
    }

    public void setPation(Pation pation) {
        this.pation = pation;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}