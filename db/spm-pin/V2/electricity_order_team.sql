CREATE TABLE `electricity_order_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费开始时间',
  `time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费结束时间',
  `period_no` varchar(256) NOT NULL DEFAULT '' COMMENT '周期(期次）id',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `latest_payment_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '最迟缴费时间',
  `site` varchar(256) NOT NULL DEFAULT '' COMMENT '场地',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机数量',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电费单价',
  `electricity_num` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '电度数',
  `every_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '每份矿机费用',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费单表-团';

-- 2020-08-22 吴永展 backend后台增加字段
ALTER TABLE `electricity_order_team` MODIFY COLUMN `electricity_num`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '实际电度' AFTER `electricity_price`;
ALTER TABLE `electricity_order_team` MODIFY COLUMN `remarks`  varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注' AFTER `amount`;
ALTER TABLE `electricity_order_team` ADD COLUMN `start_time`  date NOT NULL DEFAULT '1970-01-01' COMMENT '起始时间' AFTER `time_end`;
ALTER TABLE `electricity_order_team` ADD COLUMN `end_time`  date NOT NULL DEFAULT '1970-01-01' COMMENT '截止时间' AFTER `start_time`;
ALTER TABLE `electricity_order_team` ADD COLUMN `rated_operating_time`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '额定运行时间' AFTER `amount`;
ALTER TABLE `electricity_order_team` ADD COLUMN `outage_time`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '停电时间' AFTER `rated_operating_time`;
ALTER TABLE `electricity_order_team` ADD COLUMN `actual_running_time`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '实际运行时间' AFTER `outage_time`;
ALTER TABLE `electricity_order_team` ADD COLUMN `rated_power`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '额定电度' AFTER `actual_running_time`;
ALTER TABLE `electricity_order_team` ADD COLUMN `deduction_power_failure`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '停电扣减度数' AFTER `rated_power`;
ALTER TABLE `electricity_order_team` ADD COLUMN `total_including_circuit_loss`  decimal(15,2) NOT NULL COMMENT '含路损电度总计' AFTER `deduction_power_failure`;
ALTER TABLE `electricity_order_team` ADD COLUMN `other_fee`  decimal(15,2) NOT NULL DEFAULT 0 COMMENT '其他费用' AFTER `total_including_circuit_loss`;
ALTER TABLE `electricity_order_team` ADD COLUMN `explain`  varchar(2048) NOT NULL DEFAULT '' COMMENT '说明' AFTER `other_fee`;