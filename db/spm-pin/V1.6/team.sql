ALTER TABLE `team` ADD COLUMN `type`  enum('ROUTINE','SINGLE') NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，single为单人成团' AFTER `team_name`;
ALTER TABLE `team` ADD COLUMN `source_id`  int NOT NULL DEFAULT 0 COMMENT '来源id（如果是单人成团则是原团id）' AFTER `type`;
ALTER TABLE `team` ADD COLUMN `single_machine_num`  int NOT NULL DEFAULT 0 COMMENT '单人成团的矿机份数' AFTER `total_num`;