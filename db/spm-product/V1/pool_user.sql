CREATE TABLE `pool_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `pool_id` int(11) NOT NULL DEFAULT '0' COMMENT '算力池id',
  `open_timestamp` int(11) NOT NULL DEFAULT '0' COMMENT '最近一次开启时间戳',
  `status` enum('CLOSE','OPEN') NOT NULL DEFAULT 'OPEN' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户算力池表';