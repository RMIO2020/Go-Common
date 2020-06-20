CREATE TABLE `pay_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `order_no` varchar(100) NOT NULL DEFAULT '' COMMENT '订单号 平台内',
  `currency` enum('BTC','ETH','USDT') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '订单总额',
  `rate_usdt` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '兑 USDT 汇率',
  `amount_usdt` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '兑 USDT',
  `pay_status` enum('wait','ongoing','successful','failed','timeout') NOT NULL DEFAULT 'wait' COMMENT '支付状态',
  `pay_type` enum('','virtual','WeChat','AliPay') NOT NULL DEFAULT '' COMMENT '支付类型',
  `pay_no` varchar(100) NOT NULL DEFAULT '' COMMENT '支付单号，对接的平台单号，如微信之类',
  `pay_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '支付金额',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `platform` varchar(200) NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付单';