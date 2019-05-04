package com.slwh.emr.model;

public class Prescription extends PrescriptionKey {
    private String status;

    private Integer shenhe;

    private User user;

    private  Drug drug;

    private  Pation pation;

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }

    public Pation getPation() {
        return pation;
    }

    public void setPation(Pation pation) {
        this.pation = pation;
    }
}