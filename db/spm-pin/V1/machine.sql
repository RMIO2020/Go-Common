CREATE TABLE `machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `img_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片地址',
  `currency` enum('GRIN','CKB','ZEC','BTC') NOT NULL DEFAULT 'BTC' COMMENT '所属币种',
  `machine_model` varchar(256) NOT NULL DEFAULT '' COMMENT '矿机型号',
  `machine_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功率',
  `machine_consume_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功耗',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '算力单位',
  `unit_level` varchar(128) NOT NULL DEFAULT '' COMMENT '算力单位的单位',
  `daily_output` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日产值',
  `daily_electricity_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日电费',
  `daily_income` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日净收益',
  `introduce` text NOT NULL COMMENT '介绍',
  `status` enum('OPEN','CLOSE') NOT NULL DEFAULT 'OPEN',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='矿机表';

INSERT INTO `machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_power_unit`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `unit_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('1', '芯动矿机 Inno Pro A10（现货）', '', 'ETH', '芯动矿机 Inno Pro A10', '1.50', 'W/M', '750.00', 'W', '500', 'M', '75.36', '6.43', '68.93', '', 'OPEN', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_power_unit`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `unit_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('2', '蚂蚁矿机 Z15（现货）', '', 'ZEC', '蚂蚁 Z15', '3.60', 'W/K', '1510.00', 'W', '420', 'Ksol/s', '168.44', '12.93', '155.51', '', 'OPEN', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_power_unit`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `unit_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('3', 'CKB - Toddminer C1 Pro（现货）', '', 'CKB', 'CKB - Toddminer C1 Pro', '900.00', 'W/T', '2700.00', 'W', '3', 'TH/s', '97.00', '23.13', '73.87', '', 'OPEN', '2020-07-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO `machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_power_unit`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `unit_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('4', '蚂蚁矿机 T19', '', 'BTC', '蚂蚁矿机 T19', '37.50', 'TH/s', '3150.00', 'W', '84', 'TH/s', '44.22', '24.67', '19.55', '', 'OPEN', '1970-01-01 00:00:00', '2020-07-01 00:00:00');
