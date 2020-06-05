/**
 * 单流水 只记录钱包充值
***/
CREATE TABLE `wallet_recharge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(60) DEFAULT NULL,
  `wallet_id` int(11) NOT NULL COMMENT '钱包id',
  `currency` enum('BTC','ETH') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `recharge_address` varchar(200) NOT NULL DEFAULT '' COMMENT '充值地址',
  `memo` varchar(200) NOT NULL DEFAULT '' COMMENT 'memo or tag',
  `amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '充值数量',
  `txid` varchar(100) NOT NULL DEFAULT '' COMMENT '该笔充值 hash 值',
  `block_hash` varchar(100) NOT NULL DEFAULT '' COMMENT 'block hash 值',
  `txs_n_tx` int(11) NOT NULL DEFAULT 0 COMMENT '该笔充值确认数',
  `recharge_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '充值时间',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '充值状态（1、待确认，2、充值成功，3、充值失败',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `edit_or` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `show_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '显示状态 1前后端显示 2 前端显示 3后端显示',
  `platform` varchar(200) NOT NULL DEFAULT 1 COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='钱包充值';



CREATE TABLE `wallet_withdraw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(60) DEFAULT NULL,
  `wallet_id` int(11) NOT NULL COMMENT '钱包id',
  `currency` enum('BTC','ETH') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '提现数量',
  `handling_fee` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '手续费',
  `result_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '最终数量',
  `withdraw_address` varchar(200) NOT NULL DEFAULT '' COMMENT '提现地址 id',
  `memo` varchar(200) NOT NULL DEFAULT '' COMMENT 'memo or tag',
  `txid` varchar(200) NOT NULL DEFAULT '' COMMENT '交易id',
  `order_no` varchar(200) NOT NULL DEFAULT '' COMMENT '交易id',
  `miner_fee` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '矿工费',
  `audit` tinyint(4) NOT NULL DEFAULT 1 COMMENT '审核状态（1，待审核 2，审核通过 3，审核失败）',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '提现状态（1、待审核，2、提现中，3、提现成功，4、提现失败',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `edit_or` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `remarks` varchar(200) NOT NULL DEFAULT '' COMMENT '备注：最后一次对此提币操作的备注记录',
  PRIMARY KEY (`id`),
  KEY `idx_edit_time` (`edit_time`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 COMMENT='钱包提现记录表';