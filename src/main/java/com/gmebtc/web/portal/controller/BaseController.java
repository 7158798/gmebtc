package com.gmebtc.web.portal.controller;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.AllClientPNames;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping(value = "${ROOT_PATH}")
public class BaseController {


    private static final String requestData         = "";
    private static final String requestMode         = "POST";
    private static final String contentType         = "application/json";
    private static final String xinputCharset       = "UTF-8";
    private static final String xoutputCharset      = "UTF-8";
    private static final String clientOutputCharset = "UTF-8";


    private static Logger logger = Logger.getLogger(BaseController.class);


    /**
     * 默认页面
     *
     * @return
     */
    @RequestMapping(value = {"/", "index"})
    public String defaulString(HttpServletRequest request) {
        Locale locale = (Locale) request.getSession().getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        System.out.println(locale);
        return "/api/v1/index";
    }


    /**
     * @Author zhou
     * @Date 2018/5/24 14:21
     * @Desc 手机号注册
     */
    @RequestMapping("/user/userPhoneRegister")
    @ResponseBody
    public Object userPhoneRegister() {

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
