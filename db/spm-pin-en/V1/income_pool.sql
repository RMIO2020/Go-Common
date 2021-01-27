CREATE TABLE `income_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL COMMENT '团 id',
  `period_no` varchar(64) NOT NULL DEFAULT '0' COMMENT '批次号',
  `pool_conf` varchar(500) NOT NULL DEFAULT '' COMMENT '矿池配置',
  `currency` enum('','BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `machine_num` int(64) NOT NULL DEFAULT 0 COMMENT '矿机总量',
  `date` date NOT NULL DEFAULT '1970-01-01' COMMENT '日期',
  `tx_id` varchar(512) NOT NULL,
  `income` varchar(200) NOT NULL DEFAULT '' COMMENT '收益',
  `show_status` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT '显示状态',
  `settlement_status` enum('Unsettlement','Settled') NOT NULL DEFAULT 'Unsettlement' COMMENT '结算状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日收益-矿池';

