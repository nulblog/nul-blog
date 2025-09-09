-- ----------------------------
--  用户与岗位关联表  用户1-N岗位
-- ----------------------------
drop table if exists user_post;
create table user_post (
    user_id   bigint(20) not null comment '用户ID',
    post_id   bigint(20) not null comment '岗位ID',
    primary key (user_id, post_id)
) engine=innodb comment = '用户与岗位关联表';

-- ----------------------------
-- 初始化-用户与岗位关联表数据
-- ----------------------------
insert into user_post values ('1', '1');
insert into user_post values ('2', '2');