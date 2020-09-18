ALTER TABLE `order` ADD COLUMN `pay_usdt_amount`  decimal(15,8) NOT NULL DEFAULT 0 COMMENT '用户支付usdt金额（包括预存账单）' AFTER `refund_flow`,
ALTER TABLE `order` ADD COLUMN `pay_cny_amount`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '用户支付cny金额（包括预存账单）' AFTER `pay_usdt_amount`;
ALTER TABLE `order` ADD COLUMN `electricity_order_store_id`  int NOT NULL DEFAULT 0 COMMENT '预存电费单id' AFTER `pay_cny_amount`;
ALTER TABLE `order` ADD COLUMN `has_request_pay`  enum('NO','YES') NOT NULL DEFAULT 'NO' COMMENT '是否有请求支付' AFTER `remarks`,
ALTER TABLE `order` ADD COLUMN `pay_url`  varchar(1024) NOT NULL DEFAULT '' COMMENT '支付链接' AFTER `has_request_pay`;