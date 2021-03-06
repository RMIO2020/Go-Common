package rate

import (
	"github.com/shopspring/decimal"
	"strconv"
	"strings"
)

func CalculationAmountToUSDT(Currency string, Amount float64) (result float64) {
	rate := GetRateToUSDT(Currency)
	//result, _ = decimal.NewFromFloat(Amount).Mul(decimal.NewFromFloat(rate)).Float64()
	result = Amount * rate
	return
}

func CalculationAmountUSDTToBTC(Amount float64) (result float64) {
	rate := GetRateToUSDT("BTC")
	if rate != 0 {
		//result, _ = decimal.NewFromFloat(Amount).Sub(decimal.NewFromFloat(rate)).Float64()
		result = Amount / rate
	}
	return
}

func CalculationAmountUSDTToUsd(Currency string, Amount float64) (result float64) {
	if Currency == "USD" {
		result = Amount
	} else {
		UAmount := CalculationAmountToUSDT(Currency, Amount)
		result = UAmount * GetRateToUsd("USDT")
	}
	return
}

func CalculationAmountToCNY(Currency string, Amount float64) (result float64) {
	if Currency == "CNY" {
		result = Amount
	} else {
		UAmount := CalculationAmountToUSDT(Currency, Amount)
		result = UAmount * GetRateToCny("USDT")
	}
	return
}

func GetRateToCny(Currency string) (result float64) {
	Currency = strings.ToUpper(Currency)
	switch Currency {
	default:
		uRate := GetRateToUSDT(Currency)
		rVal := Red.Get(CNYUSDT).Val()
		cRate, err := strconv.ParseFloat(rVal, 64)
		if cRate == 0 || err != nil {
			cRate = CNYTOUSD
		}
		result, _ = decimal.NewFromFloat(uRate).Div(decimal.NewFromFloat(cRate)).Float64()
	}
	return
}

func CalculationAmountToUsd(Currency string, Amount float64) (result float64) {
	if Currency == "USD" {
		result = Amount
	} else {
		UAmount := CalculationAmountToUSDT(Currency, Amount)
		result = UAmount * GetRateToUsd("USDT")
	}
	return
}

// GetRateToUsd
func GetRateToUsd(Currency string) (result float64) {
	Currency = strings.ToUpper(Currency)
	switch Currency {
	default:
		currencyToUsdt := GetRateToUSDT(Currency)
		usdToUsdt := GetRateToUSDT("USD")
		result, _ = decimal.NewFromFloat(currencyToUsdt).Div(decimal.NewFromFloat(usdToUsdt)).Float64()
	}
	return
}

func GetRateToUSDT(Currency string) (result float64) {
	Currency = strings.ToUpper(Currency)
	var err error
	switch Currency {
	case "BTC":
		rVal := Red.Get(BTCUSDT).Val()
		result, err = strconv.ParseFloat(rVal, 64)
	case "ETH":
		rVal := Red.Get(ETHUSDT).Val()
		result, err = strconv.ParseFloat(rVal, 64)
	case "ZEC":
		rVal := Red.Get(ZECUSDT).Val()
		result, err = strconv.ParseFloat(rVal, 64)
	case "CKB":
		rVal := Red.Get(CKBUSDT).Val()
		result, err = strconv.ParseFloat(rVal, 64)
	case "HNS":
		rVal := Red.Get(HNSUSDT).Val()
		result, err = strconv.ParseFloat(rVal, 64)
	case "USDT", "FUSDT":
		result = 1
	case "CNY":
		rVal := Red.Get(CNYUSDT).Val()
		rate, err := strconv.ParseFloat(rVal, 64)
		if rate == 0 || err != nil {
			rate = CNYTOUSD
		}
		result = rate
	case "USD":
		result = USDTOUSDT
	default:
		result = 0
	}
	if err != nil {
		result = 0
	}
	return
}
