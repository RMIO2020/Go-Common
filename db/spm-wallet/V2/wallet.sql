

alter  table `wallet_recharge` modify  column `currency` enum('BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT 'BTC' COMMENT '币种';
alter  table `wallet_withdraw` modify  column `currency` enum('BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT 'BTC' COMMENT '币种';
alter  table `address_library` modify  column `currency` enum('BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT 'BTC' COMMENT '币种';
alter  table `wallet` modify  column `currency` enum('BTC','ETH','USDT','ZEC','CKB') NOT NULL DEFAULT 'BTC' COMMENT '币种';

alter  table `pay_order` modify  column `currency` enum('','BTC','ETH','USDT','CNY','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种';
alter  table `pay_order` modify  column `pay_currency` enum('','BTC','ETH','USDT','CNY','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种';
alter  table `wallet_handling_fee` modify  column `currency` enum('','BTC','ETH','USDT','CNY','ZEC','CKB') NOT NULL DEFAULT '' COMMENT '币种';