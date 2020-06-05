CREATE TABLE `sup_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) NOT NULL COMMENT '登录名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `google_key` varchar(4) NOT NULL COMMENT 'Google key',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(200) NOT NULL DEFAULT '' COMMENT '邮箱',
  `avatar` varchar(300) NOT NULL DEFAULT '' COMMENT '头像',
  `introduction` varchar(300) NOT NULL DEFAULT '' COMMENT '简介',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态（0 停止1启动）',
  `u_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `last_login_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '上次登录时间',
  `last_login_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '最近登录IP',
  `c_time` datetime NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PHONE` (`phone`),
  UNIQUE KEY `EMAIL` (`email`),
  UNIQUE KEY `GKEY` (`google_key`),
  KEY `PASSWORD` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=100 COMMENT='管理账户表';


CREATE TABLE `sup_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(11) NOT NULL COMMENT '用户主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`id`),
  KEY `system_user_id` (`admin_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='账户和角色关联表';


CREATE TABLE `sup_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `alias_name` varchar(50) NOT NULL DEFAULT '' COMMENT '别名',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '角色状态（0无效1有效）',
  `c_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='角色';

CREATE TABLE `sup_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL DEFAULT 0 COMMENT '角色主键',
  `menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '菜单主键',
  PRIMARY KEY (`id`),
  KEY `system_role_id` (`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='角色与菜单关联表';