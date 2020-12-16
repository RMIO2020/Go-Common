-- 2020.11.23 吴永展 增加退款信息
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_amount`  decimal(15,8) NOT NULL DEFAULT 0 COMMENT '退款金额' AFTER `pay_status`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_currency`  enum('','USDT','CNY') NOT NULL DEFAULT '' COMMENT '退款币种' AFTER `refund_amount`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_protocol`  enum('','ERC20') NOT NULL DEFAULT '' COMMENT '退款的币种协议' AFTER `refund_currency`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_type`  enum('','VIRTUAL','ALIPAY','BANK','WECHAT') NOT NULL DEFAULT '' COMMENT '退款方式' AFTER `refund_protocol`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_status`  enum('','FAIL','SUCCESS','BEING','WAIT') NOT NULL DEFAULT '' COMMENT '退款状态' AFTER `refund_type`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_time`  datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '退款时间' AFTER `refund_status`;
ALTER TABLE `electricity_order_store` ADD COLUMN `pay_flow`  varchar(4096) NOT NULL DEFAULT '' COMMENT '支付流水' AFTER `pay_time`;
ALTER TABLE `electricity_order_store` ADD COLUMN `refund_flow`  varchar(4096) NOT NULL DEFAULT '' COMMENT '退款流水' AFTER `refund_time`;
ALTER TABLE `electricity_order_store` MODIFY COLUMN `pay_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式' AFTER `usdt_rate`;
ALTER TABLE `electricity_order_store` MODIFY COLUMN `refund_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退款方式' AFTER `refund_protocol`;


