ALTER TABLE `electricity_order` MODIFY COLUMN `pay_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式' AFTER `usdt_rate`;
ALTER TABLE `electricity_order_store` MODIFY COLUMN `pay_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式' AFTER `usdt_rate`;
ALTER TABLE `electricity_order_store` MODIFY COLUMN `refund_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退款方式' AFTER `refund_protocol`;


