package com.dreamer.edu.repository;

import com.dreamer.edu.bean.po.TUser;

/**
 * 用户数据访问接口
 * @since 2013-10-5 下午3:55:02
 * @author broken_xie
 */
public interface TUserRep extends DreamerRep<TUser, String> {
    
    /**
     * 根据登录名获取用户信息
     * @param clogin 登录名
     * @return
     * @author broken_xie
     */
    public TUser findByClogin(String clogin);
}
