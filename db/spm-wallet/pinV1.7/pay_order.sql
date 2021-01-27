ALTER TABLE `pay_order` MODIFY COLUMN `currency`  enum('','BTC','ETH','USDT','CNY','ZEC','CKB','FUSDT','USD') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '币种' AFTER `order_no`;
ALTER TABLE `pay_order` DROP INDEX `order_no`;
ALTER TABLE `pay_order`ADD INDEX `order_no` (`order_no`) USING BTREE ;
