package com.slwh.emr.model;

public class Prescription extends PrescriptionKey {
    private String status;

    private Integer shenhe;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Integer getShenhe() {
        return shenhe;
    }

    public void setShenhe(Integer shenhe) {
        this.shenhe = shenhe;
    }
}