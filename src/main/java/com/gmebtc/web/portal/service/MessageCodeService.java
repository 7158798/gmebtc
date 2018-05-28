package com.gmebtc.web.portal.service;

import com.gmebtc.web.portal.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface MessageCodeService {

    String getMessageCode(HttpServletRequest request, User user);

    String checkPhoneCode(HttpServletRequest request, User user);

}
