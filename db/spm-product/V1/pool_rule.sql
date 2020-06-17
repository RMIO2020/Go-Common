CREATE TABLE `pool_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_en` text NOT NULL COMMENT '内容（英文）',
  `content_zhCn` text NOT NULL COMMENT '内容（中文）',
  `status` enum('EXPIRED','USING') NOT NULL DEFAULT 'USING' COMMENT '状态',
  `updatedBy` varchar(512) NOT NULL DEFAULT '' COMMENT '更新信息',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品规则表';