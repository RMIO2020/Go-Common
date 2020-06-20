CREATE TABLE `pool_user_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `income_currency` enum('ETH','BTC') NOT NULL DEFAULT 'BTC' COMMENT '收益币种',
  `yesterday_income` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '昨日收益',
  `total_income` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '总收益',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收益表';