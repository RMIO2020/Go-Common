ALTER TABLE `pay_order` MODIFY COLUMN `platform`  enum('','sup-min','pin-min') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '平台' AFTER `update_time`;
ALTER TABLE `pay_order` MODIFY COLUMN `platform`  enum('','sup-min','hosting','pin-min') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '平台' AFTER `update_time`;