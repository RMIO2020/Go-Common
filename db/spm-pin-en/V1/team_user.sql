CREATE TABLE `team_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `team_id` int(11) NOT NULL DEFAULT 0 COMMENT '团id',
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `machine_id` int(11) NOT NULL DEFAULT 0 COMMENT '矿机id',
  `machine_num` int(11) NOT NULL DEFAULT 0 COMMENT '矿机份数',
  `status` enum('','INCOME','SHELF','DELIVERY','SUCCESS','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '状态',
  `usdt_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT 'usdt总金额',
  `usd_amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '美元总金额',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团-用户表';

