CREATE TABLE `wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `currency` enum('BTC','ETH','USDT') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `total_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '账户总额',
  `available_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '可用余额',
  `frozen_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '冻结金额',
  `status` enum('normal','abnormal') NOT NULL DEFAULT 'normal' COMMENT '账户状态',
  `wallet_address` varchar(100) NOT NULL DEFAULT '' COMMENT '钱包地址',
  `memo` varchar(200) NOT NULL DEFAULT '' COMMENT 'memo or tag',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建者',
  `editor` varchar(20) NOT NULL DEFAULT '' COMMENT '更新者',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `platform` enum('','spm-min','pin-min') NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户钱包表';


