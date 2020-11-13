CREATE TABLE `electricity_order_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费开始时间',
  `time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费结束时间',
  `start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '起始时间',
  `end_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '截止时间',
  `period_no` varchar(256) NOT NULL DEFAULT '' COMMENT '批次号',
  `team_id` int(11) NOT NULL DEFAULT 0 COMMENT '团id',
  `latest_payment_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '最迟缴费时间',
  `site` varchar(256) NOT NULL DEFAULT '' COMMENT '场地',
  `machine_num` int(11) NOT NULL DEFAULT 0 COMMENT '矿机数量',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '电费单价',
  `electricity_num` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '实际电度',
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `remarks` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  `rated_operating_time` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '额定运行时间',
  `outage_time` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '停电时间',
  `actual_running_time` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '实际运行时间',
  `rated_power` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '额定电度',
  `deduction_power_failure` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '停电扣减度数',
  `total_including_circuit_loss` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '含路损电度总计',
  `other_fee` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '其他费用',
  `explain` varchar(2048) NOT NULL DEFAULT '' COMMENT '说明',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `every_amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '每份矿机费用',
  `electricity_amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '电费合计',
  `publish_status` enum('NO','YES') NOT NULL DEFAULT 'YES' COMMENT '发布状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费单表-团';

