CREATE TABLE `electricity_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '父订单号（电费账单订单号）',
  `order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '订单号',
  `late_day` int(11) NOT NULL DEFAULT '0' COMMENT '滞纳天数',
  `late_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '滞纳金',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt总金额',
  `cny_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '人民币总金额',
  `usdt_rate` varchar(15) NOT NULL DEFAULT '0' COMMENT 'USDT兑换成人民币的汇率',
  `pay_type` enum('','WECHAT','ALIPAY','VIRTUAL') NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式',
  `currency` enum('','CNY','USDT') NOT NULL DEFAULT 'CNY' COMMENT '支付币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `pay_status` enum('FAIL','SUCCESS','BEING','TIMEOUT','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '支付状态',
  `pay_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '支付时间',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费-订单表';