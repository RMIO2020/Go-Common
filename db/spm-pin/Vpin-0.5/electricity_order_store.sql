ALTER TABLE `electricity_order_store` ADD COLUMN `bank_card_no`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡号' AFTER `remarks`;
ALTER TABLE `electricity_order_store` ADD COLUMN `bank_card`  varchar(128) NOT NULL DEFAULT '' COMMENT '开户行' AFTER `bank_card_no`;
ALTER TABLE `electricity_order_store` ADD COLUMN `bank_card_username`  varchar(128) NOT NULL DEFAULT '' COMMENT '银行卡姓名' AFTER `bank_card`;