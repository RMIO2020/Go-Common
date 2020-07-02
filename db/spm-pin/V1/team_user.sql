CREATE TABLE `team_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机份数',
  `status` enum('DOWNTIME','OVER','WAIT','GROUP','RUNNING') NOT NULL DEFAULT 'WAIT' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团-用户表';