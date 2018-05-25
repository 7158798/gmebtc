package com.gmebtc.web.portal.entiry;

import java.io.Serializable;

public class JsonEntiry implements Serializable{
    private String name;
    private String passwrod;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPasswrod() {
        return passwrod;
    }

    public void setPasswrod(String passwrod) {
        this.passwrod = passwrod;
    }

    @Override
    public String toString() {
        return "JsonEntiry{" +
                "name='" + name + '\'' +
                ", passwrod='" + passwrod + '\'' +
                '}';
    }
}
