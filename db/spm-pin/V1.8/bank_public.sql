CREATE TABLE `bank_public` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_bank_card_username` varchar(128) NOT NULL DEFAULT '' COMMENT '账户名称',
  `public_bank_card` varchar(128) NOT NULL DEFAULT '' COMMENT '银行名称',
  `public_bank_card_no` varchar(128) NOT NULL DEFAULT '' COMMENT '银行账户（卡号）',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态：1为正常，2为失效',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='银行卡转账公有信息表';
