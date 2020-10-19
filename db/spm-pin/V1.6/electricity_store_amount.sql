CREATE TABLE `electricity_store_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `unused_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '未使用余额',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户预存电费-资金表';