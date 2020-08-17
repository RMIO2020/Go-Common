-- 2020-07-29 增加备注字段记录
ALTER TABLE `team`
ADD COLUMN `issue`  int NOT NULL DEFAULT 0 COMMENT '期次' AFTER `name`,
ADD COLUMN `team_name`  varchar(256) NOT NULL DEFAULT '' COMMENT '团名' AFTER `issue`,
ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `daily_income`;
ALTER TABLE `order`
ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `refund_time`;
ALTER TABLE `team_user`
ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `cny_amount`;

