CREATE TABLE `electricity_store_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL DEFAULT 0 COMMENT '团id',
  `day` int(11) NOT NULL DEFAULT 0 COMMENT '天数',
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费单-预存选择';
