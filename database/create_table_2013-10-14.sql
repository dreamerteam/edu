-- 课程类型表
CREATE TABLE t_course_type(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	cname 							VARCHAR(36)								NULL,-- 名称
	ilevel							INT												NULL,-- 等级
	uparentid						VARCHAR(36)								NULL,-- 父级id
	dcreate							datetime									NOT NULL,-- 创建时间
	dupdate							datetime									NOT NULL -- 更新时间
);
alter table t_course_type add constraint PK_T_COURSE_TYPE primary key (uuid);

-- 课程表
CREATE TABLE t_course(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	cname 							VARCHAR(36)								NULL,-- 名称
	utypeid							VARCHAR(36)								NOT NULL, -- 课程类型id（t_course_type.uuid）
	cmemo								VARCHAR(500)							NULL,-- 备注
	dcreate							datetime									NOT NULL,-- 创建时间
	dupdate							datetime									NOT NULL -- 更新时间
);
alter table t_course add constraint PK_T_COURSE primary key (uuid);

-- 反馈表
CREATE TABLE t_feedback(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	cfeedback 					text											NOT NULL,-- 反馈内容
	ctype								VARCHAR(36)								NULL,-- 反馈类型
	cobject							VARCHAR(36)								NULL,-- 反馈对象【系统、教师、学员】
	cqq									VARCHAR(36)								NULL,-- qq号码
	cemail							VARCHAR(36)								NULL,-- 邮箱地址
	cmobile							VARCHAR(11)								NULL,-- 手机号码
	ureplyid 						VARCHAR(36)								NULL,-- 回复反馈id
	utypeid							VARCHAR(36)								NOT NULL, -- 课程类型id（t_course_type.uuid）
	uuserid							VARCHAR(36)								NULL,-- 用户id
	dcreate							datetime									NOT NULL-- 创建时间
);
alter table t_feedback add constraint PK_T_FEEDBACK primary key (uuid);

-- 上课时间表
CREATE TABLE t_lession(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	uteacherid					VARCHAR(36)								NOT NULL,-- 教师id(t_user.uuid)
	ucourseid						VARCHAR(36)								NOT NULL,-- 课程id
	dlesson							datetime									NOT NULL,-- 上课时间
	uuserid							VARCHAR(36)								NOT NULL,-- 用户id(t_user.uuid)
	cobject							VARCHAR(36)								NOT NULL,-- 上课对象【教师、学员】
	dcreate							datetime									NOT NULL,-- 创建时间
	dupdate							datetime									NOT NULL -- 更新时间
);
alter table t_lession add constraint PK_T_LESSION primary key (uuid);

-- 选课表
CREATE TABLE t_lession_select(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	ucourseid						VARCHAR(36)								NOT NULL,-- 课程id
	uuserid							VARCHAR(36)								NOT NULL,-- 用户id(t_user.uuid)
	dcreate							datetime									NOT NULL,-- 创建时间
	dupdate							datetime									NOT NULL -- 更新时间
);
alter table t_lession_select add constraint PK_T_LESSION_SELECT primary key (uuid);

-- 资源上传表
CREATE TABLE t_resource(
	uuid 								VARCHAR(36)								NOT NULL,-- 主键id
	cname								VARCHAR(36)								NOT NULL,-- 名称
	ctype								VARCHAR(36)								NOT NULL,-- 类型【ppt、word、audio、video】
	cpath								VARCHAR(255)							NOT NULL,-- 文件上传路径
	csize								VARCHAR(36)								NOT NULL,-- 文件大小KB
	uuserid							VARCHAR(36)								NOT NULL,-- 用户id(t_user.uuid)
	dcreate							datetime									NOT NULL,-- 创建时间
	dupdate							datetime									NOT NULL -- 更新时间
);
alter table t_resource add constraint PK_T_RESOURCE primary key (uuid);






