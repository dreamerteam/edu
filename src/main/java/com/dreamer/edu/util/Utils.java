package com.dreamer.edu.util;

import java.util.UUID;

/**
 * 工具类
 * @since 2013-10-5 下午4:24:56
 * @author broken_xie
 */
public class Utils {
    
    /**
     * 获取主键
     * @return
     * @author broken_xie
     */
    public static String getPrimaryKey() {
        return UUID.randomUUID().toString();
    }
    
    /**
     * 获取字符串（str为空返回空字符串，否则去掉前后空格）
     * @param str 原始字符串
     * @return
     * @author broken_xie 
     */
    public static String getTrimString(String str){
        return (null == str ? "" : str.trim());
    }
}
