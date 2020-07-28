CREATE TABLE `wallet_handling_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `currency` enum('','BTC','ETH','USDT','CNY','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `handling_fee` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '手续费',
  `min_number` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '最小提币数量',
  `exceed_number` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '超过人工审核数',
  `min_miner_fee` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '基本矿工费',
  `max_miner_fee` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '最大矿工费',
  `creator` varchar(128) NOT NULL DEFAULT '' COMMENT '创建者',
  `editor` varchar(128) NOT NULL DEFAULT '' COMMENT '更新者',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='手续费设置';