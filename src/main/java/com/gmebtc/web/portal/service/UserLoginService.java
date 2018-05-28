package com.gmebtc.web.portal.service;


import com.gmebtc.web.portal.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserLoginService {

    String login(HttpServletRequest request, User user);

    String logout (HttpServletRequest request);

    String forgetPassword(HttpServletRequest request, User user);
}
