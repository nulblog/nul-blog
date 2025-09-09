-- ----------------------------
--  用户和角色关联表  用户N-1角色
-- ----------------------------
drop table if exists user_role;
create table user_role (
    user_id   bigint(20) not null comment '用户ID',
    role_id   bigint(20) not null comment '角色ID',
    primary key(user_id, role_id)
) engine=innodb comment = '用户和角色关联表';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert into user_role values ('1', '1');
insert into user_role values ('2', '2');