-- ----------------------------
--  部门表
-- ----------------------------
drop table if exists dept;
create table dept (
    dept_id           bigint(20)      not null auto_increment    comment '部门id',
    parent_id         bigint(20)      default 0                  comment '父部门id',
    ancestors         varchar(50)     default ''                 comment '祖级列表',
    dept_name         varchar(30)     default ''                 comment '部门名称',
    order_num         int(4)          default 0                  comment '显示顺序',
    leader            varchar(20)     default null               comment '负责人',
    phone             varchar(11)     default null               comment '联系电话',
    email             varchar(50)     default null               comment '邮箱',
    status            char(1)         default '0'                comment '部门状态（0正常 1停用）',
    del_flag          char(1)         default '0'                comment '删除标志（0代表存在 2代表删除）',
    create_by         varchar(64)     default ''                 comment '创建者',
    create_time 	    datetime                                   comment '创建时间',
    update_by         varchar(64)     default ''                 comment '更新者',
    update_time       datetime                                   comment '更新时间',
    primary key (dept_id)
) engine=innodb auto_increment=200 comment = '部门表';

-- ----------------------------
-- 初始化-部门表数据
-- ----------------------------
insert into dept values(100,  0,   '0',          'Nul Blog', 0, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(101,  100, '0,100',      '深圳总公司', 1, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(102,  100, '0,100',      '长沙分公司', 2, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(103,  101, '0,100,101',  '研发部门',   1, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(104,  101, '0,100,101',  '市场部门',   2, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(105,  101, '0,100,101',  '测试部门',   3, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(106,  101, '0,100,101',  '财务部门',   4, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(107,  101, '0,100,101',  '运维部门',   5, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(108,  102, '0,100,102',  '市场部门',   1, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);
insert into dept values(109,  102, '0,100,102',  '财务部门',   2, 'NulBlog', '13266666666', 'nul@163.com', '0', '0', 'admin', sysdate(), '', null);