ALTER TABLE `electricity_order` ADD COLUMN `type`  enum('ROUTINE','STORE') NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，store为预存' AFTER `order_no`;
ALTER TABLE `electricity_order` ADD COLUMN `user_id`  varchar(128) NOT NULL DEFAULT '' COMMENT '用户id' AFTER `order_no`;
