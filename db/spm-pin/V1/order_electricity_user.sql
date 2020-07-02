CREATE TABLE `order_electricity_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period_no` varchar(200) NOT NULL DEFAULT '' COMMENT '批次号',
  `order_name` varchar(256) NOT NULL DEFAULT '' COMMENT '电费单名称',
  `machine_model` varchar(256) NOT NULL DEFAULT '' COMMENT '矿机型号',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机份数',
  `site` varchar(256) NOT NULL DEFAULT '' COMMENT '场地',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电费单价',
  `electricity_num` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '电度数',
  `late_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '滞纳金',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '原金额',
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `total_usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt总金额',
  `usdt_rate` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '支付币种兑换成USDT的汇率',
  `status` enum('FAIL','SUCCESS','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '状态',
  `pay_type` enum('WECHAT','ALIPAY','VIRTUAL') NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式',
  `currency` enum('CNY','USDT') NOT NULL DEFAULT 'CNY' COMMENT '支付币种',
  `pay_status` enum('FAIL','SUCCESS','BEING','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '支付状态',
  `pay_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '支付时间',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费单-用户';