package com.dreamer.edu.bean.ro;

import java.io.Serializable;

import static com.dreamer.edu.util.Utils.getTrimString;

/**
 * 登录请求对象
 * @since 2013-10-6 下午3:25:25
 * @author broken_xie
 */
public class LoginRequest implements Serializable {
    
    /**  */
    private static final long serialVersionUID = 4231157448476614888L;
    
    /** 登录名 */
    private String clogin;
    
    /** 密码 */
    private String cpassword;
    
    /** 验证码 */
    private String captcha;
    
    /** 验证码会话ID */
    private String captchaSessionID;
    
    /**
     * 获取 登录名
     * @return clogin
     */
    public String getClogin() {
        return clogin;
    }
    
    /**
     * 设置 登录名
     * @param clogin 登录名
     */
    public void setClogin(String clogin) {
        this.clogin = getTrimString(clogin);
    }
    
    /**
     * 获取 密码
     * @return cpassword
     */
    public String getCpassword() {
        return cpassword;
    }
    
    /**
     * 设置 密码
     * @param cpassword 密码
     */
    public void setCpassword(String cpassword) {
        this.cpassword = getTrimString(cpassword);
    }
    
    /**
     * 获取 验证码
     * @return captcha
     */
    public String getCaptcha() {
        return captcha;
    }
    
    /**
     * 设置 验证码
     * @param captcha 验证码
     */
    public void setCaptcha(String captcha) {
        this.captcha = getTrimString(captcha);
    }
    
    /**
     * 获取 验证码会话ID
     * @return captchaSessionID
     */
    public String getCaptchaSessionID() {
        return captchaSessionID;
    }
    
    /**
     * 设置 验证码会话ID
     * @param captchaSessionID 验证码会话ID
     */
    public void setCaptchaSessionID(String captchaSessionID) {
        this.captchaSessionID = getTrimString(captchaSessionID);
    }
    
}
