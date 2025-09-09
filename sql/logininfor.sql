-- ----------------------------
--  系统访问记录
-- ----------------------------
drop table if exists sys_logininfor;
create table logininfor (
    info_id        bigint(20)     not null auto_increment   comment '访问ID',
    user_name      varchar(50)    default ''                comment '用户账号',
    ipaddr         varchar(128)   default ''                comment '登录IP地址',
    login_location varchar(255)   default ''                comment '登录地点',
    browser        varchar(50)    default ''                comment '浏览器类型',
    os             varchar(50)    default ''                comment '操作系统',
    status         char(1)        default '0'               comment '登录状态（0成功 1失败）',
    msg            varchar(255)   default ''                comment '提示消息',
    login_time     datetime                                 comment '访问时间',
    primary key (info_id),
    key idx_logininfor_s  (status),
    key idx_logininfor_lt (login_time)
) engine=innodb auto_increment=100 comment = '系统访问记录';