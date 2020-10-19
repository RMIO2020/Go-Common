
alter  table `income_user` modify  column `income`  varchar(200) NOT NULL DEFAULT '' COMMENT '收益';
alter  table `income_pool` modify  column `income`  varchar(200) NOT NULL DEFAULT '' COMMENT '收益';


ALTER TABLE `income_user` ADD `currency` varchar(20) NOT NULL DEFAULT '' COMMENT '币种' AFTER `pool_conf`;
ALTER TABLE `income_pool` ADD `currency` varchar(20) NOT NULL DEFAULT '' COMMENT '币种' AFTER `pool_conf`;


ALTER TABLE `income_user` ADD `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注';
ALTER TABLE `income_pool` ADD `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注';

-- 2020-08-06 吴永展-增加收益的交易id
ALTER TABLE `income_pool` ADD COLUMN `tx_id`  varchar(512) NOT NULL DEFAULT '' COMMENT '交易id' AFTER `date`;
ALTER TABLE `income_user` ADD COLUMN `tx_id`  varchar(512) NOT NULL DEFAULT '' COMMENT '交易id' AFTER `date`;

-- 2020-08-27 吴永展 发放收益时间字段
ALTER TABLE `income_user` ADD COLUMN `issue_income_time`  datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '发放收益时间' AFTER `remarks`;


alter  table `income_pool` modify  column `currency` enum('','BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种';
ALTER TABLE `income_pool` ADD COLUMN `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议' AFTER `currency`;
alter  table `income_user` modify  column `currency` enum('','BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种';
ALTER TABLE `income_user` ADD COLUMN `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议' AFTER `currency`;