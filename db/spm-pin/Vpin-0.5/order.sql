ALTER TABLE `order` MODIFY COLUMN `commission_reduction_amount`  decimal(15,8) NOT NULL DEFAULT 0.00000000 COMMENT '返佣抵扣金额（跟usdt价值量一致）' AFTER `other_fee`;
ALTER TABLE `order` MODIFY COLUMN `commission_reduction_cny_amount`  decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '返佣抵扣金额（人民币）' AFTER `commission_reduction_amount`;
ALTER TABLE `order` ADD COLUMN `commission_invite_amount`  decimal(15,8) NOT NULL DEFAULT 0 COMMENT '返佣给邀请者金额（fusdt）' AFTER `commission_reduction_cny_amount`;
ALTER TABLE `order` ADD COLUMN `bank_card_no`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡号' AFTER `has_request_pay`;
ALTER TABLE `order` ADD COLUMN `bank_card`  varchar(128) NOT NULL DEFAULT '' COMMENT '开户行' AFTER `bank_card_no`;
ALTER TABLE `order` ADD COLUMN `bank_card_username`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡姓名' AFTER `bank_card`;