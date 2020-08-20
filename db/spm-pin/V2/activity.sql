
/* 活动 */
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动预约开始时间',
  `reservation_time_end` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动预约结束时间',
  `activity_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动开始时间',
  `activity_time_end` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动结束时间',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `status` enum('','reservation','processing','end','timeout') NOT NULL DEFAULT '' COMMENT '状态',
  `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动';


/* 体验挖矿 活动 */
CREATE TABLE `activity_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动表 id',
  `team_id` int(11) NOT NULL COMMENT '团 id',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `static_annual_net_income` varchar(100) NOT NULL DEFAULT '' COMMENT '静态年净收入',
  `income_currency` varchar(50) NOT NULL DEFAULT '' COMMENT '收益币种',
  `can_dig_for_time` varchar(100) NOT NULL DEFAULT '' COMMENT '可以挖的时长（文字说明）',
  `static_payback_cycle` varchar(100) NOT NULL DEFAULT '' COMMENT '静态回本周期（文字说明）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show_status` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT '显示状态',
  `status` enum('') NOT NULL DEFAULT '' COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COMMENT='活动矿机';



/* 活动用户参与情况 */
CREATE TABLE `activity_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `activity_id` int(11) NOT NULL COMMENT '活动表 id',
  `reservation_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '预约时间',
  `activity_time_end` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动结束时间',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COMMENT='用户参与活动情况';