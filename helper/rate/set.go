package rate

import "github.com/RMIO2020/Go-Common/helper/cache"

func SetRate(Symbol string, rate float64) {
	switch Symbol {
	case BTCUSDT:
		Red.Set("rate1", rate, cache.TimeDayToSeven)
		Red.Set(BTCUSDT, rate, cache.TimeDayToSeven)
	case ETHUSDT:
		Red.Set("rate2", rate, cache.TimeDayToSeven)
		Red.Set(ETHUSDT, rate, cache.TimeDayToSeven)
	case ZECUSDT:
		Red.Set("rate5", rate, cache.TimeDayToSeven)
		Red.Set(ZECUSDT, rate, cache.TimeDayToSeven)
	case CKBUSDT:
		Red.Set(CKBUSDT, rate, cache.TimeDayToSeven)
	case HNSUSDT:
		Red.Set(HNSUSDT, rate, cache.TimeDayToSeven)
	}
}
