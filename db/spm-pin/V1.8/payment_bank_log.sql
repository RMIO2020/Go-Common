CREATE TABLE `payment_bank_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型：1为商品（团），2为账单，3为服务费',
  `object_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联表id',
  `order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '订单号',
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `remarks` text NOT NULL COMMENT '备注',
  `pay_bank_code` varchar(512) NOT NULL DEFAULT '' COMMENT '付款方银行卡号',
  `pay_username` varchar(512) NOT NULL DEFAULT '' COMMENT '付款方真实姓名',
  `bank_public_id` int(11) NOT NULL DEFAULT 0 COMMENT '银行卡id',
  `account_name` varchar(512) NOT NULL DEFAULT '' COMMENT '账户名称',
  `bank_name` varchar(512) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_code` varchar(512) NOT NULL DEFAULT '' COMMENT '银行账户（卡号）',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态：0为待确认，1为成功，2为失败',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='银行卡转账记录';