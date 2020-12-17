-- 20201215 吴永展 增加是否为信用卡支付字段
ALTER TABLE `team` ADD COLUMN `is_credit_pay`  tinyint NOT NULL DEFAULT 0 COMMENT '是否为信用卡支付：0为否，1为是' AFTER `single_user_id`;