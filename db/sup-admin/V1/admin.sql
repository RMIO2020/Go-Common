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

CREATE TABLE `sup_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `path` varchar(50) NOT NULL DEFAULT '' COMMENT '路径',
  `component` varchar(100) NOT NULL DEFAULT '' COMMENT '组件',
  `redirect` varchar(200) NOT NULL DEFAULT '' COMMENT '重定向',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '访问url',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'meta标题',
  `meta_icon` varchar(50) NOT NULL DEFAULT '' COMMENT 'meta icon',
  `meta_nocache` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否缓存（1:是 0:否）',
  `alwaysshow` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否总是显示（1:是0：否）',
  `meta_affix` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否加固（1:是0：否）',
  `type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '类型(1:固定,2:权限配置3特殊)',
  `hidden` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否隐藏（0否1是）',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父ID',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态（0禁止1启动）',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '层级',
  `c_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `idx_list` (`pid`,`sort`,`status`) USING BTREE,
  KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='菜单';

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