CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `tag` varchar(2048) NOT NULL,
  `img_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片地址',
  `machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '矿机id',
  `group_num` int(11) NOT NULL DEFAULT '0' COMMENT '成团数量',
  `stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '矿机份数',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '下单份数',
  `pay_num` int(11) NOT NULL DEFAULT '0' COMMENT '支付份数',
  `total_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机总份数',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电价',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '定价',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '折扣',
  `result_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `deposit` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '押金',
  `late_fee_rate` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '滞纳金率',
  `other_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '其他费用',
  `observer_url` varchar(512) NOT NULL DEFAULT '' COMMENT '观察者链接',
  `status` enum('READY','FULL','FAIL','SUCCESS','OVER','FORMGROUP','BEING') NOT NULL DEFAULT 'BEING' COMMENT '拼团状态',
  `event_time_start` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动开始时间',
  `event_time_end` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动结束时间',
  `delivery_time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计发货开始时间',
  `delivery_time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计发货结束时间',
  `shelf_time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计上架开始时间',
  `shelf_time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计上架结束时间',
  `delivery_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '发货时间',
  `shelf_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '上架时间',
  `dig_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '开挖时间',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团（产品）表';

INSERT INTO `spm-test`.`team` (`id`, `name`, `tag`, `head_img_url`, `img_url`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `observer_url`, `status`, `event_time_start`, `event_time_end`, `delivery_time_start`, `delivery_time_end`, `shelf_time_start`, `shelf_time_end`, `delivery_time`, `shelf_time`, `dig_time`, `create_time`, `update_time`) VALUES ('1', '蚂蚁矿机 T17+', '补货售卖中', 'https://gitee.com/bidz/File/raw/master/pintuan/lb_t17+.png', '[\"https://gitee.com/bidz/File/raw/master/pintuan/xq_t17+.png\"]', '1', '10', '50', '0', '0', '50', '0.32', '1076.71', '0.9800', '1055.18', '100.00', '0.0050', '0.00', '', 'BEING', '2020-05-10 00:00:00', '2020-06-30 23:59:59', '2020-05-11', '2020-07-01', '2020-07-01', '2020-07-05', '1970-01-01', '1970-01-01', '1970-01-01', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`team` (`id`, `name`, `tag`, `head_img_url`, `img_url`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `observer_url`, `status`, `event_time_start`, `event_time_end`, `delivery_time_start`, `delivery_time_end`, `shelf_time_start`, `shelf_time_end`, `delivery_time`, `shelf_time`, `dig_time`, `create_time`, `update_time`) VALUES ('2', '神马 M20S', '千人团', 'https://gitee.com/bidz/File/raw/master/pintuan/lb_m20s.png', '[\"https://gitee.com/bidz/File/raw/master/pintuan/xq_m20s.png\"]', '2', '10', '50', '0', '0', '50', '0.32', '2092.00', '0.9800', '2050.16', '100.00', '0.0050', '0.00', 'https://pool.binancezh.com/cn/earnings?urlParams=z64DhpCbj4O71F5OcoXlM37GySNlStF5ouWNZekL0aM06544', 'BEING', '2020-05-10 00:00:00', '2020-06-30 23:59:59', '2020-05-16', '2020-07-01', '2020-07-01', '2020-07-05', '1970-01-01', '1970-01-01', '1970-01-01', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`team` (`id`, `name`, `tag`, `head_img_url`, `img_url`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `observer_url`, `status`, `event_time_start`, `event_time_end`, `delivery_time_start`, `delivery_time_end`, `shelf_time_start`, `shelf_time_end`, `delivery_time`, `shelf_time`, `dig_time`, `create_time`, `update_time`) VALUES ('3', '蚂蚁 Z15', '秒杀品', 'https://gitee.com/bidz/File/raw/master/pintuan/lb_z15.png', '[\"https://gitee.com/bidz/File/raw/master/pintuan/xq_z15.png\"]', '3', '10', '50', '0', '0', '50', '0.35', '1785.71', '0.9800', '1750.00', '100.00', '0.0050', '0.00', '', 'BEING', '2020-05-10 00:00:00', '2020-06-30 23:59:59', '2020-05-21', '2020-07-01', '2020-07-01', '2020-07-05', '1970-01-01', '1970-01-01', '1970-01-01', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
INSERT INTO `spm-test`.`team` (`id`, `name`, `tag`, `head_img_url`, `img_url`, `machine_id`, `group_num`, `stock`, `order_num`, `pay_num`, `total_num`, `electricity_price`, `price`, `discount`, `result_price`, `deposit`, `late_fee_rate`, `other_fee`, `observer_url`, `status`, `event_time_start`, `event_time_end`, `delivery_time_start`, `delivery_time_end`, `shelf_time_start`, `shelf_time_end`, `delivery_time`, `shelf_time`, `dig_time`, `create_time`, `update_time`) VALUES ('4', 'CKB - Toddminer C1 Pro', '小币种', 'https://gitee.com/bidz/File/raw/master/pintuan/lb_toddminer%20c1%20pro.png', '[\"https://gitee.com/bidz/File/raw/master/pintuan/xq_toddminer%20c1%20pro.png\"]', '4', '5', '100', '0', '0', '100', '0.35', '17900.00', '0.9800', '17542.00', '100.00', '0.0050', '0.00', '', 'BEING', '2020-05-10 00:00:00', '2020-06-30 23:59:59', '2020-05-21', '2020-07-01', '2020-07-01', '2020-07-05', '1970-01-01', '1970-01-01', '1970-01-01', '2020-07-02 12:00:00', '2020-07-02 12:00:00');
