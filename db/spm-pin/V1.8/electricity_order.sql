ALTER TABLE `electricity_order` ADD COLUMN `bank_log_id`  int NOT NULL DEFAULT 0 COMMENT '银行卡转账记录id' AFTER `pay_time`;
ALTER TABLE `electricity_order` MODIFY COLUMN `pay_status`  enum('FAIL','SUCCESS','BEING','CONFIRMING','TIMEOUT','WAIT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'WAIT' COMMENT '支付状态' AFTER `protocol`;
ALTER TABLE `electricity_order` MODIFY COLUMN `pay_type`  enum('','WECHAT','ALIPAY','BANK','VIRTUAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式' AFTER `usdt_rate`;

