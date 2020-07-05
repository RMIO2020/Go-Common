CREATE TABLE `team_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `group_num` int(11) NOT NULL DEFAULT '0' COMMENT '成团数量',
  `stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '矿机份数',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '下单份数',
  `pay_num` int(11) NOT NULL DEFAULT '0' COMMENT '支付份数',
  `total_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机总份数',
  `buy_num_min` int(11) NOT NULL DEFAULT '0' COMMENT '最高购买矿机份数',
  `buy_num_max` int(11) NOT NULL DEFAULT '0' COMMENT '最高购买矿机份数',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电价',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '定价',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '折扣',
  `result_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `deposit` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '押金',
  `late_fee_rate` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '滞纳金率',
  `other_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '其他费用',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团表-矿机';

INSERT INTO `team_machine` (`id`, `team_id`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `buy_num_min`, `buy_num_max`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `create_time`, `update_time`) VALUES ('1', '1', '1', '10', '0', '10', '10', '10', '1', '2', '0.35', '18500.00', '0.9600', '17800.00', '189.00', '0.0050', '100.00', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `team_machine` (`id`, `team_id`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `buy_num_min`, `buy_num_max`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `create_time`, `update_time`) VALUES ('2', '2', '2', '10', '0', '10', '10', '10', '1', '2', '0.35', '24500.00', '0.9900', '24280.00', '380.40', '0.0050', '100.00', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `team_machine` (`id`, `team_id`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `buy_num_min`, `buy_num_max`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `create_time`, `update_time`) VALUES ('3', '3', '3', '10', '0', '10', '10', '10', '1', '2', '0.35', '24000.00', '0.7400', '17800.00', '680.40', '0.0050', '100.00', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `team_machine` (`id`, `team_id`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `buy_num_min`, `buy_num_max`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `create_time`, `update_time`) VALUES ('4', '4', '4', '10', '0', '10', '10', '10', '1', '2', '0.32', '14900.00', '0.9600', '14276.00', '720.00', '0.0050', '100.00', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
