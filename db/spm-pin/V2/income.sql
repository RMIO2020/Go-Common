
alter  table `income_user` modify  column `income`  varchar(200) NOT NULL DEFAULT '' COMMENT '收益';
alter  table `income_pool` modify  column `income`  varchar(200) NOT NULL DEFAULT '' COMMENT '收益';