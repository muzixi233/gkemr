package com.slwh.emr.model;

public class Ith {
    private Integer ithId;

    private String ithNo;

    private Integer ithPatient;

    private Integer ithNurse;

    private String ithBed;

    private String ithMsg;

    private String ithStatus;

    private String ithUser;

    public Integer getIthId() {
        return ithId;
    }

    public void setIthId(Integer ithId) {
        this.ithId = ithId;
    }

    public String getIthNo() {
        return ithNo;
    }

    public void setIthNo(String ithNo) {
        this.ithNo = ithNo == null ? null : ithNo.trim();
    }

    public Integer getIthPatient() {
        return ithPatient;
    }

    public void setIthPatient(Integer ithPatient) {
        this.ithPatient = ithPatient;
    }

    public Integer getIthNurse() {
        return ithNurse;
    }

    public void setIthNurse(Integer ithNurse) {
        this.ithNurse = ithNurse;
    }

    public String getIthBed() {
        return ithBed;
    }

    public void setIthBed(String ithBed) {
        this.ithBed = ithBed == null ? null : ithBed.trim();
    }

    public String getIthMsg() {
        return ithMsg;
    }

    public void setIthMsg(String ithMsg) {
        this.ithMsg = ithMsg == null ? null : ithMsg.trim();
    }

    public String getIthStatus() {
        return ithStatus;
    }

    public void setIthStatus(String ithStatus) {
        this.ithStatus = ithStatus == null ? null : ithStatus.trim();
    }

    public String getIthUser() {
        return ithUser;
    }

    public void setIthUser(String ithUser) {
        this.ithUser = ithUser == null ? null : ithUser.trim();
    }
}