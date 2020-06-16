/**
 * 单流水 只记录钱包充值
***/
CREATE TABLE `wallet_recharge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(60) DEFAULT NULL,
  `wallet_id` int(11) NOT NULL COMMENT '钱包id',
  `currency` enum('BTC','ETH','USDT') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `recharge_address` varchar(200) NOT NULL DEFAULT '' COMMENT '充值地址',
  `from_address` varchar(200) NOT NULL DEFAULT '' COMMENT ' 来源地址',
  `memo` varchar(200) NOT NULL DEFAULT '' COMMENT 'memo or tag',
  `amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '充值数量',
  `txid` varchar(100) NOT NULL DEFAULT '' COMMENT '该笔充值 hash 值',
  `block_hash` varchar(100) NOT NULL DEFAULT '' COMMENT 'block hash 值',
  `confirm` int(11) NOT NULL DEFAULT 0 COMMENT '该笔充值确认数',
  `recharge_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '充值时间',
  `status` enum('confirm','success','failure') NOT NULL DEFAULT 'confirm' COMMENT '充值状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `editor` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `platform` varchar(200) NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`),
  unique key `txid` (`txid`,`recharge_address`,`memo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值';



CREATE TABLE `wallet_withdraw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(60) DEFAULT NULL,
  `wallet_id` int(11) NOT NULL COMMENT '钱包id',
  `currency` enum('BTC','ETH','USDT') NOT NULL DEFAULT 'BTC' COMMENT '币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '提现数量',
  `handling_fee` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '手续费',
  `result_amount` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '最终数量',
  `withdraw_address` varchar(200) NOT NULL DEFAULT '' COMMENT '提现地址 id',
  `memo` varchar(200) NOT NULL DEFAULT '' COMMENT 'memo or tag',
  `txid` varchar(200) NOT NULL DEFAULT '' COMMENT '交易id',
  `order_no` varchar(200) NOT NULL DEFAULT '' COMMENT '平台订单号',
  `tx_no` varchar(200) NOT NULL DEFAULT '' COMMENT '交易单号',
  `miner_fee` decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '矿工费',
  `audit` enum('wait','success','failure') NOT NULL DEFAULT 'wait' COMMENT '审核状态',
  `status` enum('wait','confirm','success','failure') NOT NULL DEFAULT 'wait' COMMENT '提现状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `creator` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `editor` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `remarks` varchar(200) NOT NULL DEFAULT '' COMMENT '备注：最后一次对此提币操作的备注记录',
  `platform` varchar(200) NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 COMMENT='提币';



CREATE TABLE `wallet_push_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text DEFAULT null COMMENT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `edit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='钱包推送记录';

CREATE TABLE `wallet_send_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text,
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `edit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='发送到钱包的消息记录';