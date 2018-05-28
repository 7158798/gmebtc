package com.gmebtc.web.portal.utils;

import com.gmebtc.web.portal.net.CommonUtil;
import com.gmebtc.web.portal.net.JsonUtil;
import com.gmebtc.web.portal.net.modle.ResultJson;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

/*
 * @Author zhou
 * @Date 2018/5/28 14:18
 * @Desc 发送请求到后台
 */
public class SendRequestUtil {

    private static Logger logger = Logger.getLogger(SendRequestUtil.class);

    // 发送带有参数的post请求
    public static String sendRequest(HttpServletRequest request, Object object, String method) {
        String data = JsonUtil.getJsonStringJavaPOJO(object);
        ResultJson resultJson = null;
        try {
            resultJson = CommonUtil.getResultJson(data, request, method);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            logger.error("发送请求失败:" + e.getMessage());
        }
        if (null == resultJson) {
            return null;
        }
        return resultJson.getData().toString();

    }

    // 发送没有参数的post请求
    public static String sendRequest (HttpServletRequest request,String method){
        ResultJson resultJson = null;
        try {
            resultJson = CommonUtil.getResultJson(request, method);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            logger.error("发送请求失败:" + e.getMessage());
        }
        if (null == resultJson) {
            return null;
        }
        return resultJson.getData().toString();
    }
}
