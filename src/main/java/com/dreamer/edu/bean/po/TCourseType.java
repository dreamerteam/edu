package com.dreamer.edu.bean.po;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 课程类型表实体类
 * @since 2013-10-14 下午4:40:21
 * @author broken_xie
 */
@Entity
@Table(name = "t_course_type")
public class TCourseType implements Serializable {
    
    /**  */
    private static final long serialVersionUID = 1990192149055459756L;
    
    /** 主键id */
    @Id
    @Column(unique = true, nullable = false, length = 36)
    private String uuid;
    
    /** 名称 */
    @Column(length = 36)
    private String cname;
    
    /** 创建日期 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date dcreate;
    
    /** 更新日期 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date dupdate;
    
    /** 等级 */
    private int ilevel;
    
    /** 父级id */
    @Column(length = 36)
    private String uparentid;
    
    /** 课程集合 */
    @OneToMany(mappedBy = "TCourseType")
    private Set<TCourse> TCourses;
    
    /**
     * 获取 主键id
     * @return uuid
     */
    public String getUuid() {
        return uuid;
    }
    
    /**
     * 设置 主键id
     * @param uuid 主键id
     */
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
    
    /**
     * 获取 名称
     * @return cname
     */
    public String getCname() {
        return cname;
    }
    
    /**
     * 设置 名称
     * @param cname 名称
     */
    public void setCname(String cname) {
        this.cname = cname;
    }
    
    /**
     * 获取 创建日期
     * @return dcreate
     */
    public Date getDcreate() {
        return dcreate;
    }
    
    /**
     * 设置 创建日期
     * @param dcreate 创建日期
     */
    public void setDcreate(Date dcreate) {
        this.dcreate = dcreate;
    }
    
    /**
     * 获取 更新日期
     * @return dupdate
     */
    public Date getDupdate() {
        return dupdate;
    }
    
    /**
     * 设置 更新日期
     * @param dupdate 更新日期
     */
    public void setDupdate(Date dupdate) {
        this.dupdate = dupdate;
    }
    
    /**
     * 获取 等级
     * @return ilevel
     */
    public int getIlevel() {
        return ilevel;
    }
    
    /**
     * 设置 等级
     * @param ilevel 等级
     */
    public void setIlevel(int ilevel) {
        this.ilevel = ilevel;
    }
    
    /**
     * 获取 父级id
     * @return uparentid
     */
    public String getUparentid() {
        return uparentid;
    }
    
    /**
     * 设置 父级id
     * @param uparentid 父级id
     */
    public void setUparentid(String uparentid) {
        this.uparentid = uparentid;
    }
    
    /**
     * 获取 课程集合
     * @return tCourses
     */
    public Set<TCourse> getTCourses() {
        return TCourses;
    }
    
    /**
     * 设置 课程集合
     * @param tCourses 课程集合
     */
    public void setTCourses(Set<TCourse> tCourses) {
        TCourses = tCourses;
    }
    
}
