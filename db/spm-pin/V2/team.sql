/* 对接矿池所需字段 内存 json 结构 */
ALTER TABLE `team` ADD `pool_conf` varchar(500) NOT NULL DEFAULT '' COMMENT '矿池配置' AFTER `observer_url`;

-- 2020-08-06 吴永展-增加备注字段记录
ALTER TABLE `team` ADD COLUMN `issue`  int NOT NULL DEFAULT 0 COMMENT '期次' AFTER `name`;
ALTER TABLE `team` ADD COLUMN `team_name` varchar(256) NOT NULL DEFAULT '' COMMENT '团名' AFTER `issue`;
ALTER TABLE `team` ADD COLUMN `remarks`  varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `daily_income`;
ALTER TABLE `team` ADD COLUMN `income_status`  enum('OFF','ON') NOT NULL DEFAULT 'ON' AFTER `pool_conf`;
ALTER TABLE `team` ADD COLUMN `goods_status` enum('PUT','OFF') NOT NULL DEFAULT 'PUT' COMMENT '商品状态' AFTER `status`;
ALTER TABLE `team` ADD COLUMN `show_status` enum('OFF','ON') NOT NULL DEFAULT 'ON' COMMENT '显示状态（特殊用户都可以观看）' AFTER `goods_status`;
ALTER TABLE `team` ADD COLUMN `daily_output` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日产值' AFTER `dig_time`;
ALTER TABLE `team` ADD COLUMN `daily_electricity_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日电费' AFTER `daily_output`;
ALTER TABLE `team` ADD COLUMN `daily_income` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '日净收益' AFTER `daily_electricity_fee`;
ALTER TABLE `team` ADD COLUMN `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注' AFTER `daily_income`;

-- 2020-08-15 吴永展-增加排序字段
ALTER TABLE `team` ADD COLUMN `rank` int NOT NULL COMMENT '实际成团矿机数量' AFTER `daily_income`;

-- 2020-08-18 吴永展-实际矿机数量（实际计算电费与收益）
ALTER TABLE `team` ADD COLUMN `machine_num`  int NOT NULL DEFAULT 0 COMMENT '实际成团矿机数量' AFTER `show_status`;
