

/* 对接矿池所需字段 内存 json 结构 */
ALTER TABLE `team` ADD `pool_conf` varchar(500) NOT NULL DEFAULT '' COMMENT '矿池配置' AFTER `observer_url`;
