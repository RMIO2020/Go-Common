package rate

import (
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
	//result, _ = decimal.NewFromFloat(Amount).Sub(decimal.NewFromFloat(rate)).Float64()
	result = Amount / rate
	return
}

func CalculationAmountToCNY(Currency string, Amount float64) (result float64) {
	if Currency == "CNY" {
		result = Amount
	} else {
		UAmount := CalculationAmountToUSDT(Currency, Amount)
		result = UAmount * 7
	}
	return
}

func GetRateToUSDT(Currency string) (result float64) {
	Currency = strings.ToUpper(Currency)
	switch Currency {
	case "BTC":
		rVal := Red.Get("BTC-USDT").Val()
		result, _ = strconv.ParseFloat(rVal, 64)
	case "ETH":
		rVal := Red.Get("ETH-USDT").Val()
		result, _ = strconv.ParseFloat(rVal, 64)
	case "ZEC":
		rVal := Red.Get("ZEC-USDT").Val()
		result, _ = strconv.ParseFloat(rVal, 64)
	case "CKB":
		rVal := Red.Get("CKB-USDT").Val()
		result, _ = strconv.ParseFloat(rVal, 64)
	case "USDT":
		result = 1
	case "CNY":
		result = 0.1429
	default:
		result = 0
	}
	return
}
