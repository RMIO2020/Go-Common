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