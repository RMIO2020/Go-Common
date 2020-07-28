
ALTER TABLE `team_user` ADD `usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt总金额';
ALTER TABLE `team_user` ADD `cny_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '人民币总金额';