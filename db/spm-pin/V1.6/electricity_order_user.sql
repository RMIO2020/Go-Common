ALTER TABLE `electricity_order_user` MODIFY COLUMN `amount`  decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '总金额' AFTER `late_fee`;
ALTER TABLE `electricity_order_user` ADD COLUMN `deduction_type`  enum('PAY','STORE') NOT NULL DEFAULT 'PAY' COMMENT '扣费方式' AFTER `pay_time`;
ALTER TABLE `electricity_order_user` ADD COLUMN `deduction_time`  datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '抵扣时间' AFTER `deduction_type`;

-- version/V1.6/backend 吴永展 增加发布状态
ALTER TABLE `electricity_order_user` ADD COLUMN `publish_status`  enum('NO','YES') NOT NULL DEFAULT 'YES' COMMENT '发布状态' AFTER `remarks`;

-- 2020.11.06 吴永展 增加支付订单号
ALTER TABLE `electricity_order_user` ADD COLUMN `pay_order_no`  varchar(256) NOT NULL DEFAULT '' COMMENT '支付订单号' AFTER `order_no`;