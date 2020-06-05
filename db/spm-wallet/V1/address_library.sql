CREATE TABLE `address_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `currency` enum('BTC','ETH') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `status` enum('normal','abnormal','binding') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `address` varchar(300) NOT NULL DEFAULT '' COMMENT '地址',
  `memo` varchar(300) NOT NULL DEFAULT '' COMMENT 'Memo Or Tag',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建者',
  `editor` varchar(20) NOT NULL DEFAULT '' COMMENT '更新者',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `platform` varchar(200) NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='地址库';