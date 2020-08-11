CREATE TABLE `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(50) NOT NULL DEFAULT '',
  `rate` varchar(200) NOT NULL DEFAULT '',
  `year` int(5) NOT NULL DEFAULT '0',
  `month` int(2) NOT NULL DEFAULT '0',
  `day` int(2) NOT NULL DEFAULT '0',
  `hour` int(2) NOT NULL DEFAULT '0',
  `minute` int(2) NOT NULL DEFAULT '0',
  `second` int(2) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '完整时间',
  `platform` varchar(200) NOT NULL DEFAULT '' COMMENT '来源平台',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付单';