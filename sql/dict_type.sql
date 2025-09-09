-- ----------------------------
--  字典类型表
-- ----------------------------
drop table if exists dict_type;
create table dict_type (
    dict_id          bigint(20)      not null auto_increment    comment '字典主键',
    dict_name        varchar(100)    default ''                 comment '字典名称',
    dict_type        varchar(100)    default ''                 comment '字典类型',
    status           char(1)         default '0'                comment '状态（0正常 1停用）',
    create_by        varchar(64)     default ''                 comment '创建者',
    create_time      datetime                                   comment '创建时间',
    update_by        varchar(64)     default ''                 comment '更新者',
    update_time      datetime                                   comment '更新时间',
    remark           varchar(500)    default null               comment '备注',
    primary key (dict_id),
    unique (dict_type)
) engine=innodb auto_increment=100 comment = '字典类型表';

insert into dict_type values(1,  '用户性别', 'user_sex',        '0', 'admin', sysdate(), '', null, '用户性别列表');
insert into dict_type values(2,  '菜单状态', 'show_hide',       '0', 'admin', sysdate(), '', null, '菜单状态列表');
insert into dict_type values(3,  '系统开关', 'normal_disable',  '0', 'admin', sysdate(), '', null, '系统开关列表');
insert into dict_type values(4,  '任务状态', 'job_status',      '0', 'admin', sysdate(), '', null, '任务状态列表');
insert into dict_type values(5,  '任务分组', 'job_group',       '0', 'admin', sysdate(), '', null, '任务分组列表');
insert into dict_type values(6,  '系统是否', 'yes_no',          '0', 'admin', sysdate(), '', null, '系统是否列表');
insert into dict_type values(7,  '通知类型', 'notice_type',     '0', 'admin', sysdate(), '', null, '通知类型列表');
insert into dict_type values(8,  '通知状态', 'notice_status',   '0', 'admin', sysdate(), '', null, '通知状态列表');
insert into dict_type values(9,  '操作类型', 'oper_type',       '0', 'admin', sysdate(), '', null, '操作类型列表');
insert into dict_type values(10, '系统状态', 'common_status',   '0', 'admin', sysdate(), '', null, '登录状态列表');
