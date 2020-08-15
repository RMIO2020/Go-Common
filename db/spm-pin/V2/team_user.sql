ALTER TABLE `team_user` ADD `usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt总金额';
ALTER TABLE `team_user` ADD `cny_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '人民币总金额';

--2020-08-15 吴永展-增加备注；修改状态类型
ALTER TABLE `team_user` ADD `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注';
ALTER TABLE `team_user` MODIFY COLUMN `status` enum('','INCOME','SHELF','DELIVERY','SUCCESS','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '状态';
