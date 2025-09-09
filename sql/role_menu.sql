-- ----------------------------
--  角色和菜单关联表  角色1-N菜单
-- ----------------------------
drop table if exists role_menu;
create table role_menu (
    role_id   bigint(20) not null comment '角色ID',
    menu_id   bigint(20) not null comment '菜单ID',
    primary key(role_id, menu_id)
) engine=innodb comment = '角色和菜单关联表';

-- ----------------------------
-- 初始化-角色和菜单关联表数据
-- ----------------------------
insert into role_menu values ('2', '1');
insert into role_menu values ('2', '2');
insert into role_menu values ('2', '3');
insert into role_menu values ('2', '4');
insert into role_menu values ('2', '100');
insert into role_menu values ('2', '101');
insert into role_menu values ('2', '102');
insert into role_menu values ('2', '103');
insert into role_menu values ('2', '104');
insert into role_menu values ('2', '105');
insert into role_menu values ('2', '106');
insert into role_menu values ('2', '107');
insert into role_menu values ('2', '108');
insert into role_menu values ('2', '109');
insert into role_menu values ('2', '110');
insert into role_menu values ('2', '111');
insert into role_menu values ('2', '112');
insert into role_menu values ('2', '113');
insert into role_menu values ('2', '114');
insert into role_menu values ('2', '115');
insert into role_menu values ('2', '116');
insert into role_menu values ('2', '117');
insert into role_menu values ('2', '500');
insert into role_menu values ('2', '501');
insert into role_menu values ('2', '1000');
insert into role_menu values ('2', '1001');
insert into role_menu values ('2', '1002');
insert into role_menu values ('2', '1003');
insert into role_menu values ('2', '1004');
insert into role_menu values ('2', '1005');
insert into role_menu values ('2', '1006');
insert into role_menu values ('2', '1007');
insert into role_menu values ('2', '1008');
insert into role_menu values ('2', '1009');
insert into role_menu values ('2', '1010');
insert into role_menu values ('2', '1011');
insert into role_menu values ('2', '1012');
insert into role_menu values ('2', '1013');
insert into role_menu values ('2', '1014');
insert into role_menu values ('2', '1015');
insert into role_menu values ('2', '1016');
insert into role_menu values ('2', '1017');
insert into role_menu values ('2', '1018');
insert into role_menu values ('2', '1019');
insert into role_menu values ('2', '1020');
insert into role_menu values ('2', '1021');
insert into role_menu values ('2', '1022');
insert into role_menu values ('2', '1023');
insert into role_menu values ('2', '1024');
insert into role_menu values ('2', '1025');
insert into role_menu values ('2', '1026');
insert into role_menu values ('2', '1027');
insert into role_menu values ('2', '1028');
insert into role_menu values ('2', '1029');
insert into role_menu values ('2', '1030');
insert into role_menu values ('2', '1031');
insert into role_menu values ('2', '1032');
insert into role_menu values ('2', '1033');
insert into role_menu values ('2', '1034');
insert into role_menu values ('2', '1035');
insert into role_menu values ('2', '1036');
insert into role_menu values ('2', '1037');
insert into role_menu values ('2', '1038');
insert into role_menu values ('2', '1039');
insert into role_menu values ('2', '1040');
insert into role_menu values ('2', '1041');
insert into role_menu values ('2', '1042');
insert into role_menu values ('2', '1043');
insert into role_menu values ('2', '1044');
insert into role_menu values ('2', '1045');
insert into role_menu values ('2', '1046');
insert into role_menu values ('2', '1047');
insert into role_menu values ('2', '1048');
insert into role_menu values ('2', '1049');
insert into role_menu values ('2', '1050');
insert into role_menu values ('2', '1051');
insert into role_menu values ('2', '1052');
insert into role_menu values ('2', '1053');
insert into role_menu values ('2', '1054');
insert into role_menu values ('2', '1055');
insert into role_menu values ('2', '1056');
insert into role_menu values ('2', '1057');
insert into role_menu values ('2', '1058');
insert into role_menu values ('2', '1059');
insert into role_menu values ('2', '1060');