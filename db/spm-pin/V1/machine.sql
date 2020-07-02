CREATE TABLE `machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `img_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片地址',
  `currency` enum('GRIN','CKB','ZEC','BTC') NOT NULL DEFAULT 'BTC' COMMENT '所属币种',
  `machine_model` varchar(256) NOT NULL DEFAULT '' COMMENT '矿机型号',
  `machine_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功率',
  `machine_consume_power` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '矿机功耗',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '算力单位',
  `daily_output` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日产值',
  `daily_electricity_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日电费',
  `daily_income` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日净收益',
  `introduce` text NOT NULL COMMENT '介绍',
  `status` enum('OPEN','CLOSE') NOT NULL DEFAULT 'OPEN',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='矿机表';