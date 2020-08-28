CREATE TABLE `email_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL DEFAULT '' COMMENT 'email',
  `type` varchar(200) NOT NULL DEFAULT '' COMMENT '类型',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT 'code',
  `content` text DEFAULT NULL COMMENT '消息内容',
  `response` text DEFAULT NULL COMMENT '响应',
  `status` enum('','issue') NOT NULL DEFAULT '' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `platform` enum('','spm-min','pin-min') NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件日志';



CREATE TABLE `sms_yunpian` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `type` varchar(200) NOT NULL COMMENT '类型',
  `code` varchar(10) NOT NULL COMMENT 'code',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '消息内容',
  `response` text DEFAULT NULL COMMENT '响应',
  `status` enum('','issue') NOT NULL DEFAULT '' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `edit_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `platform` enum('','spm-min','pin-min') NOT NULL DEFAULT '' COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='云片消息';