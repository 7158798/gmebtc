package com.gmebtc.web.portal.controller;

import com.gmebtc.web.portal.entity.User;
import com.gmebtc.web.portal.result.GlobalResult;
import com.gmebtc.web.portal.result.ResultCode;
import com.gmebtc.web.portal.service.MessageCodeService;
import com.gmebtc.web.portal.utils.Toolkits;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/*
 * @Author zhou
 * @Date 2018/5/28 16:28
 * @Desc 短信验证码控制类
 */
@Controller
@RequestMapping("${ROOT_PATH}/user")
public class MessageCodeController {

    @Resource(name = "messageCodeService")
    private MessageCodeService messageCodeService;


    /**
     * @Author zhou
     * @Date 2018/5/28 18:15
     * @Param [request, user]
     * @Desc 发送验证码
     */
    @RequestMapping("/getMessageCode")
    @ResponseBody
    public Object getMessageCode(HttpServletRequest request, User user) {

        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String, String> map = new HashMap<String, String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "手机号不能为空");
            map.put("msg2", "验证码类型不能为空");
        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Cell phone number can not be empty");
            map.put("msg1", "The type of verifying code can not be empty");
        }

        // 手机号码是否为空
        if (null == user.getPhoneNumber() || "".equals(user.getPhoneNumber())) {
            result.setCode(ResultCode.CODE_ERROR_9);     // 手机号为空状态码
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }
        if (null == user.getType()) {
            result.setCode(ResultCode.CODE_ERROR_15);
            result.setMessage(Toolkits.defaultString(map.get("msg2")));
            return result;
        }

        String json = messageCodeService.getMessageCode(request, user);

        return json;
    }


    @RequestMapping(value = "/checkPhoneCode", method = RequestMethod.POST)
    @ResponseBody
    public Object checkPhoneCode (HttpServletRequest request,User user){
        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String, String> map = new HashMap<String, String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "手机号不能为空");
            map.put("msg2", "验证码类型不能为空");
            map.put("msg3", "验证码不能为空");
        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Cell phone number can not be empty");
            map.put("msg2", "The type of verifying code can not be empty");
            map.put("msg3", "The verifying code cannot be empty");
        }

        // 手机号码是否为空
        if (null == user.getPhoneNumber() || "".equals(user.getPhoneNumber())) {
            result.setCode(ResultCode.CODE_ERROR_9);     // 手机号为空状态码
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }
        if (null == user.getType()) {
            result.setCode(ResultCode.CODE_ERROR_15);
            result.setMessage(Toolkits.defaultString(map.get("msg2")));
            return result;
        }
        if (null == user.getPhoneCode() || "".equals(user.getPhoneCode())) {
            result.setCode(ResultCode.CODE_ERROR_11);
            result.setMessage(Toolkits.defaultString(map.get("msg3")));
            return result;
        }

        String json = messageCodeService.checkPhoneCode(request,user);
        return json;
    }

}
