CREATE TABLE `income_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `period_no` varchar(64) NOT NULL DEFAULT '0' COMMENT '批次号',
  `period_title` varchar(256) NOT NULL DEFAULT '' COMMENT '期次标题',
  `period_time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '周期开始时间',
  `period_time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '周期结束时间',
  `date` date NOT NULL DEFAULT '1970-01-01' COMMENT '日期',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机数量',
  `income` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '收益',
  `status` enum('FAIL','SUCCESS','WAIT') NOT NULL DEFAULT 'SUCCESS' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日收益表-用户';