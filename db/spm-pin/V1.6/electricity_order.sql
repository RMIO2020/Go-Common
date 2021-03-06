ALTER TABLE `electricity_order` ADD COLUMN `type`  enum('ROUTINE','STORE') NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，store为预存' AFTER `order_no`;
ALTER TABLE `electricity_order` ADD COLUMN `user_id`  varchar(128) NOT NULL DEFAULT '' COMMENT '用户id' AFTER `order_no`;
ALTER TABLE `electricity_order` MODIFY COLUMN `amount`  decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '总金额' AFTER `late_fee`;
ALTER TABLE `electricity_order` MODIFY COLUMN `type`  enum('ROUTINE','STORE','STOREREDUCE') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，store为预存，storereduce为预存抵扣' AFTER `order_no`;
ALTER TABLE `electricity_order` ADD COLUMN `team_id`  int NOT NULL DEFAULT 0 COMMENT '团id' AFTER `type`;
