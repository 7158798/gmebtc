package com.gmebtc.web.portal.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping(value = "${ROOT_PATH}")
public class BaseController {

    private Logger logger = Logger.getLogger(BaseController.class);

    /**
     * 默认页面
     *
     * @return
     */
    @RequestMapping(value = {"/", "index"})
    public String defaulString() {
        return "index";
    }


    /**
     * @Author 小周
     * @Date 2018/5/24 14:21
     * @Desc 手机号注册
     */
    @RequestMapping("/user/userPhoneRegister")
    @ResponseBody
    public Object userPhoneRegister(){

        return "register";
    }




    /**
     * 国际化转换
     *
     * @param session
     * @param request
     * @param lang
     */
    @RequestMapping(value = "/changeLang")
    @ResponseBody
    public Object changeLang(HttpSession session, HttpServletRequest request, @RequestParam String lang) {
        Map<Object, Object> map = new HashMap<Object, Object>();
        Locale locale = null;
        if (lang.equals("zh_CN")) {
            locale = new Locale("zh", "CN");
        } else if (lang.equals("en_US")) {
            locale = new Locale("en", "US");
        }

        request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locale);
        session.setAttribute("locale", locale.toString());
        map.put("locale", locale.toString());

        return map;
    }
}
