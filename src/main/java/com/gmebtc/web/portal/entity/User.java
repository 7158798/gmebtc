package com.gmebtc.web.portal.entity;

import java.io.Serializable;

public class User implements Serializable{
    private Integer id;
    private String phoneNumber;
    private String countryCode;
    private String phoneCode;
    private String password;
    private String PayPassword;
    private String refereeId;
    private String email;
    private String verifyCode;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getPhoneCode() {
        return phoneCode;
    }

    public void setPhoneCode(String phoneCode) {
        this.phoneCode = phoneCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPayPassword() {
        return PayPassword;
    }

    public void setPayPassword(String payPassword) {
        PayPassword = payPassword;
    }

    public String getRefereeId() {
        return refereeId;
    }

    public void setRefereeId(String refereeId) {
        this.refereeId = refereeId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {

        this.email = email;
    }

    public String getVerifyCode() {
        return verifyCode;
    }


    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", countryCode='" + countryCode + '\'' +
                ", phoneCode='" + phoneCode + '\'' +
                ", password='" + password + '\'' +
                ", PayPassword='" + PayPassword + '\'' +
                ", refereeId='" + refereeId + '\'' +
                ", email='" + email + '\'' +
                ", verifyCode='" + verifyCode + '\'' +
                '}';
    }
}
