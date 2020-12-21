ALTER TABLE `electricity_order_user` MODIFY COLUMN `pay_type`  enum('','VIRTUAL','ALIPAY','BANK','CREDITCARD','WECHAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式' AFTER `status`;
ALTER TABLE `electricity_order_user` MODIFY COLUMN `electricity_price`  decimal(15,4) NOT NULL DEFAULT 0.00 COMMENT '电费单价' AFTER `site`;
