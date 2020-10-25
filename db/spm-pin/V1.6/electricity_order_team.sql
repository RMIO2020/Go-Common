-- version/V1.6/backend 吴永展 增加发布状态
ALTER TABLE `electricity_order_team` ADD COLUMN `publish_status`  enum('NO','YES') NOT NULL DEFAULT 'YES' COMMENT '发布状态' AFTER `electricity_amount`;