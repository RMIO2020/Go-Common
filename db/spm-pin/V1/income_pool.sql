CREATE TABLE `income_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL COMMENT '团 id',
  `period_no` varchar(64) NOT NULL DEFAULT '0' COMMENT '批次号',
  `pool_conf` varchar(500) NOT NULL DEFAULT '' COMMENT '矿池配置',
  `machine_num` int(64) NOT NULL DEFAULT '0' COMMENT '矿机总量',
  `date` date NOT NULL DEFAULT '1970-01-01' COMMENT '日期',
  `income` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '收益',
  `show_status` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT '显示状态',
  `settlement_status` enum('UnSettlement','Settled') NOT NULL DEFAULT 'UnSettlement' COMMENT '结算状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日收益-矿池';