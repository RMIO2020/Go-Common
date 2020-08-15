package rate

import "github.com/RMIO2020/Go-Common/helper/cache"

func SetRate(Symbol string, rate float64) {
	switch Symbol {
	case "BTC-USDT":
		Red.Set("rate1", rate, cache.TimeDayToSeven)
		Red.Set(Symbol, rate, cache.TimeDayToSeven)
	case "ETH-USDT":
		Red.Set("rate2", rate, cache.TimeDayToSeven)
		Red.Set(Symbol, rate, cache.TimeDayToSeven)
	case "ZEC-USDT":
		Red.Set("rate5", rate, cache.TimeDayToSeven)
		Red.Set(Symbol, rate, cache.TimeDayToSeven)
	case "CKB-USDT":
		Red.Set(Symbol, rate, cache.TimeDayToSeven)
	}
}
