CREATE TABLE `income_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL COMMENT '团 id',
  `pool_uname` varchar(256) NOT NULL DEFAULT '' COMMENT '矿池账号 ',
  `machine_num` int(64) NOT NULL DEFAULT '0' COMMENT '矿机总量',
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT '日期',
  `income` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '收益',
  `status` enum('SUCCESS','WAIT') NOT NULL DEFAULT 'SUCCESS' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日收益-矿池';