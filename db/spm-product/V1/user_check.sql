CREATE TABLE `user_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户id',
  `capital_pwd` varchar(128) NOT NULL DEFAULT '' COMMENT '资金密码',
  `capital_pwd_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '资金密码更新时间',
  `google_key` varchar(128) NOT NULL DEFAULT '' COMMENT 'google key',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户安全表';