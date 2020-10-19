-- 2020-07-29 吴永展-增加备注字段记录
ALTER TABLE `order` ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `refund_time`;

-- 2020-08-81 吴永展-根据backend的订单功能增加字段与修改字段
ALTER TABLE `order` MODIFY COLUMN `pay_type`  enum('','VIRTUAL','ALIPAY','BANK','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支付方式' AFTER `usdt_rate`;
ALTER TABLE `order` MODIFY COLUMN `currency`  enum('','USDT','CNY') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支付币种' AFTER `pay_type`;
ALTER TABLE `order` ADD COLUMN `refund_amount`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '退款金额' AFTER `pay_status`;
ALTER TABLE `order` ADD COLUMN `refund_currency`  enum('','USDT','CNY') NOT NULL DEFAULT '' COMMENT '退款币种' AFTER `refund_amount`;
ALTER TABLE `order` ADD COLUMN `refund_type`  enum('','VIRTUAL','ALIPAY','BANK','WECHAT') NOT NULL DEFAULT '' COMMENT '退款方式' AFTER `refund_currency`;
ALTER TABLE `order` ADD COLUMN `pay_flow` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支付流水' AFTER `refund_time`;
ALTER TABLE `order` ADD COLUMN `refund_flow`  varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款流水' AFTER `pay_flow`;
ALTER TABLE `order` ADD COLUMN `refund_protocol`  enum('','ERC20') NOT NULL COMMENT '退款的币种协议' AFTER `refund_currency`;