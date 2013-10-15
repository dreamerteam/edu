package com.dreamer.edu.bean.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 课程表实体类
 * @since 2013-10-14 下午4:42:57
 * @author broken_xie
 */
@Entity
@Table(name = "t_course")
public class TCourse implements Serializable {
    
    /**  */
    private static final long serialVersionUID = -4610254710997208160L;
    
    /** 主键id */
    @Id
    @Column(unique = true, nullable = false, length = 36)
    private String uuid;
    
    /** 备注 */
    @Column(length = 500)
    private String cmemo;
    
    /** 名称 */
    @Column(length = 36)
    private String cname;
    
    /** 创建时间 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date dcreate;
    
    /** 更新时间 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date dupdate;
    
    /** 课程类型 */
    @ManyToOne
    @JoinColumn(name = "utypeid", nullable = false)
    private TCourseType TCourseType;
    
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
     * 获取 备注
     * @return cmemo
     */
    public String getCmemo() {
        return cmemo;
    }
    
    /**
     * 设置 备注
     * @param cmemo 备注
     */
    public void setCmemo(String cmemo) {
        this.cmemo = cmemo;
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
     * 获取 创建时间
     * @return dcreate
     */
    public Date getDcreate() {
        return dcreate;
    }
    
    /**
     * 设置 创建时间
     * @param dcreate 创建时间
     */
    public void setDcreate(Date dcreate) {
        this.dcreate = dcreate;
    }
    
    /**
     * 获取 更新时间
     * @return dupdate
     */
    public Date getDupdate() {
        return dupdate;
    }
    
    /**
     * 设置 更新时间
     * @param dupdate 更新时间
     */
    public void setDupdate(Date dupdate) {
        this.dupdate = dupdate;
    }
    
    /**
     * 获取 课程类型
     * @return tCourseType
     */
    public TCourseType getTCourseType() {
        return TCourseType;
    }
    
    /**
     * 设置 课程类型
     * @param tCourseType 课程类型
     */
    public void setTCourseType(TCourseType tCourseType) {
        TCourseType = tCourseType;
    }
    
}
