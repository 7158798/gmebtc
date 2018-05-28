package com.gmebtc.web.portal.service;

import com.gmebtc.web.portal.entity.Coin;
import com.gmebtc.web.portal.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
    String userPhoneRegister(HttpServletRequest request,User user);

    String coinInfo ( HttpServletRequest request,Coin coin);

    String userEmaillRegister(HttpServletRequest request, User user);
}