ALTER TABLE `electricity_order_team` MODIFY COLUMN `electricity_price`  decimal(15,4) NOT NULL DEFAULT 0.00 COMMENT '电费单价' AFTER `machine_num`;