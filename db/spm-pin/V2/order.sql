-- 2020-07-29 吴永展-增加备注字段记录
ALTER TABLE `order` ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `refund_time`;