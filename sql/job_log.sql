-- ----------------------------
--  定时任务调度日志表
-- ----------------------------
drop table if exists job_log;
create table job_log (
    job_log_id          bigint(20)     not null auto_increment    comment '任务日志ID',
    job_name            varchar(64)    not null                   comment '任务名称',
    job_group           varchar(64)    not null                   comment '任务组名',
    invoke_target       varchar(500)   not null                   comment '调用目标字符串',
    job_message         varchar(500)                              comment '日志信息',
    status              char(1)        default '0'                comment '执行状态（0正常 1失败）',
    exception_info      varchar(2000)  default ''                 comment '异常信息',
    create_time         datetime                                  comment '创建时间',
    primary key (job_log_id)
) engine=innodb comment = '定时任务调度日志表';