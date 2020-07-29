CREATE TABLE `electricity_late_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '1970-01-01' COMMENT '日期',
  `electricity_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '电费用户表id',
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '滞纳金率',
  `late_day` int(11) NOT NULL DEFAULT '0' COMMENT '逾期天数',
  `principal` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '本金',
  `late_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '滞纳金',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费滞纳金记录表';
