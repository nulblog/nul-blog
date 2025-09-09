-- ----------------------------
--  角色和部门关联表  角色1-N部门
-- ----------------------------
drop table if exists role_dept;
create table role_dept (
                               role_id   bigint(20) not null comment '角色ID',
                               dept_id   bigint(20) not null comment '部门ID',
                               primary key(role_id, dept_id)
) engine=innodb comment = '角色和部门关联表';

-- ----------------------------
-- 初始化-角色和部门关联表数据
-- ----------------------------
insert into role_dept values ('2', '100');
insert into role_dept values ('2', '101');
insert into role_dept values ('2', '105');