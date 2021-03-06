ALTER TABLE `electricity_order_user` ADD COLUMN `bank_log_id`  int NOT NULL DEFAULT 0 COMMENT '银行卡转账记录id' AFTER `publish_status`;
ALTER TABLE `electricity_order_user` MODIFY COLUMN `pay_status`  enum('FAIL','SUCCESS','CONFIRMING','BEING','WAIT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'WAIT' COMMENT '支付状态' AFTER `protocol`;
ALTER TABLE `electricity_order_user` ADD COLUMN `bank_card_no`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡号' AFTER `publish_status`;
ALTER TABLE `electricity_order_user` ADD COLUMN `bank_card`  varchar(128) NOT NULL DEFAULT '' COMMENT '开户行' AFTER `bank_card_no`;
ALTER TABLE `electricity_order_user` ADD COLUMN `bank_card_username`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡姓名' AFTER `bank_card`;
ALTER TABLE `electricity_order_user` ADD COLUMN `pay_check_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '银行转账审核时间' AFTER `bank_card_username`;
ALTER TABLE `electricity_order_user` MODIFY COLUMN `status`  enum('FAIL','SUCCESS','CONFIRMING','WAIT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'WAIT' COMMENT '状态' AFTER `usdt_rate`;