package com.gmebtc.web.portal.entity;

import java.io.Serializable;

public class Coin implements Serializable{
    private String coinType;

    public String getCoinType() {
        return coinType;
    }

    public void setCoinType(String coinType) {
        this.coinType = coinType;
    }

}
