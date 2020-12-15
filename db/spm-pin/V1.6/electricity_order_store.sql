CREATE TABLE `electricity_order_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '订单号',
  `team_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '团订单id',
  `team_order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '团订单号',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `store_day` int(11) NOT NULL DEFAULT '0' COMMENT '预存天数',
  `store_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '预存金额',
  `hosting_name` varchar(255) NOT NULL DEFAULT '' COMMENT '托管姓名',
  `hosting_address` varchar(255) NOT NULL DEFAULT '' COMMENT '托管钱包地址',
  `is_order_attach` enum('NO','YES') NOT NULL DEFAULT 'NO' COMMENT '是否为下订单时附属',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机数量',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '单份价格（人民币）',
  `amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '金额',
  `usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt金额',
  `cny_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '人民币金额',
  `usdt_rate` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '支付币种兑换成USDT的汇率',
  `pay_type` enum('','VIRTUAL','ALIPAY','BANK','WECHAT') NOT NULL DEFAULT '' COMMENT '支付方式',
  `currency` enum('','USDT','CNY') NOT NULL DEFAULT '' COMMENT '支付币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `pay_status` enum('FAIL','SUCCESS','BEING','TIMEOUT','WAIT') NOT NULL DEFAULT 'BEING' COMMENT '支付状态',
  `status` enum('FAIL','SUCCESS','BEING') NOT NULL DEFAULT 'BEING' COMMENT '状态',
  `pay_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '支付时间',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='预存电费单表';

-- 2020.11.23 吴永展 增加退款信息
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_amount`  decimal(15,8) NOT NULL DEFAULT 0 COMMENT '退款金额' AFTER `pay_status`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_currency`  enum('','USDT','CNY') NOT NULL DEFAULT '' COMMENT '退款币种' AFTER `refund_amount`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_protocol`  enum('','ERC20') NOT NULL DEFAULT '' COMMENT '退款的币种协议' AFTER `refund_currency`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_type`  enum('','VIRTUAL','ALIPAY','BANK','WECHAT') NOT NULL DEFAULT '' COMMENT '退款方式' AFTER `refund_protocol`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_status`  enum('','FAIL','SUCCESS','BEING','WAIT') NOT NULL DEFAULT '' COMMENT '退款状态' AFTER `refund_type`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_time`  datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '退款时间' AFTER `refund_status`;
ALTER TABLE `electricity_order_store` ADD COLUMN `pay_flow`  varchar(4096) NOT NULL DEFAULT '' COMMENT '支付流水' AFTER `pay_time`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_flow`  varchar(4096) NOT NULL DEFAULT '' COMMENT '退款流水' AFTER `refund_time`;

