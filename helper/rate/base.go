package rate

import (
	"github.com/go-redis/redis"
)

var Red = redis.Client{}

func Init(Redis *redis.Client) {
	Red = *Redis
}

const (
	BTCUSDT = "BTC-USDT"
	ETHUSDT = "ETH-USDT"
	ZECUSDT = "ZEC-USDT"
	CKBUSDT = "CKB-USDT"
	CNYUSDT = "CNY-USDT"
	HNSUSDT = "HNS-USDT"

	CNYTOUSD = 0.14881

	USDTOUSDT = 1
)
