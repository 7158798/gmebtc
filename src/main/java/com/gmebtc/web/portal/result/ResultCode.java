package com.gmebtc.web.portal.result;

import java.io.Serializable;

public class ResultCode {

    public static final int CODE_SUCCESS = 0;
    public static final int CODE_ERROR_1 = -1;               //用户名或密码错误
    public static final int CODE_ERROR_2 = -2;                      // 密码为空
    public static final int CODE_ERROR_3 = -3;                       //资金密码为空
    public static final int CODE_ERROR_4 = -4;                             //邮箱不存在
    public static final int CODE_ERROR_5= -5;                                  //coinMainUrl
    public static final int CODE_ERROR_6 =-6;                                      //验证码失效
    public static final int CODE_ERROR_7 =-7;                     //验证码错误
    public static final int CODE_ERROR_8=-8;                     //原密码错误
    public static final int CODE_ERROR_9 =-9;                     //手机号为空
    public static final int CODE_ERROR_10 =-10;                     //邮箱未激活
    public static final int CODE_ERROR_11 =-11;                     //手机验证码为空
    public static final int CODE_ERROR_12 =-12;                     //手机绑定失败

    public static final int CODE_ERROR = -1000;               //其他错误
    public static final int CODE_ERROR_UN_LOGIN=-99;          //未登录

}
