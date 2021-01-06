ALTER TABLE `electricity_order_store` ADD COLUMN `bank_log_id`  int NOT NULL DEFAULT 0 COMMENT '银行卡转账记录id' AFTER `bank_card_username`;
ALTER TABLE `electricity_order_store` MODIFY COLUMN `pay_status`  enum('FAIL','SUCCESS','BEING','CONFIRMING','TIMEOUT','WAIT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BEING' COMMENT '支付状态' AFTER `protocol`;

