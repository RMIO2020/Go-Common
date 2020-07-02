CREATE TABLE `machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `img_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片地址',
  `currency` enum('GRIN','CKB','ZEC','BTC') NOT NULL DEFAULT 'BTC' COMMENT '所属币种',
  `machine_model` varchar(256) NOT NULL DEFAULT '' COMMENT '矿机型号',
  `machine_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功率',
  `machine_consume_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功耗',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '算力单位',
  `uint_level` varchar(128) NOT NULL DEFAULT '' COMMENT '算力单位的单位',
  `daily_output` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日产值',
  `daily_electricity_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日电费',
  `daily_income` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日净收益',
  `introduce` text NOT NULL COMMENT '介绍',
  `status` enum('OPEN','CLOSE') NOT NULL DEFAULT 'OPEN',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='矿机表';

INSERT INTO `spm-test`.`machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `uint_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('1', '蚂蚁 T17+', '', 'BTC', '蚂蚁 T17+', '44.00', '2820.00', 'W/T', '64', 'TH/s', '36.37', '21.66', '14.28', '', 'OPEN', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `uint_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('2', '神马 M20S', '', 'BTC', '神马 M20S', '48.00', '3360.00', 'W/T', '70', 'TH/s', '39.78', '25.80', '13.46', '', 'OPEN', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `uint_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('3', '蚂蚁 Z15', '', 'ZEC', '蚂蚁 Z15', '3.60', '1510.00', 'W/K', '420', 'K', '165.60', '12.68', '152.67', '', 'OPEN', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`machine` (`id`, `name`, `img_url`, `currency`, `machine_model`, `machine_power`, `machine_consume_power`, `machine_consume_power_unit`, `unit`, `uint_level`, `daily_output`, `daily_electricity_fee`, `daily_income`, `introduce`, `status`, `create_time`, `update_time`) VALUES ('4', 'Toddminer C1 Pro', '', 'CKB', 'Toddminer C1 Pro', '900.00', '2700.00', 'W/T', '3', 'TH/s', '95.78', '22.68', '72.65', '', 'OPEN', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
