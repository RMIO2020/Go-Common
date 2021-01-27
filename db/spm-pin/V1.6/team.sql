ALTER TABLE `team` ADD COLUMN `type`  enum('ROUTINE','SINGLE') NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，single为单人成团' AFTER `team_name`;
ALTER TABLE `team` ADD COLUMN `source_id`  int NOT NULL DEFAULT 0 COMMENT '来源id（如果是单人成团则是原团id）' AFTER `type`;
ALTER TABLE `team` ADD COLUMN `single_machine_num`  int NOT NULL DEFAULT 0 COMMENT '单人成团的矿机份数' AFTER `total_num`;

-- 2020.11.06 吴永展 增加单人成团信息
ALTER TABLE `team` ADD COLUMN `single_order_no`  varchar(256) NOT NULL DEFAULT '' COMMENT '单人成团订单号' AFTER `remarks`;
ALTER TABLE `team` ADD COLUMN `single_user_id`  varchar(128) NOT NULL DEFAULT '' COMMENT '单人成团用户id' AFTER `single_order_no`;