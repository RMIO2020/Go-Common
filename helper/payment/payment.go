package payment

import (
	"github.com/shopspring/decimal"
	"strings"
)

// GetEmailPayType 获取邮件的支付方式
func GetEmailPayType(payType string) string {
	payType = strings.ToUpper(payType)
	switch payType {
	case "WECHAT":
		return "微信"
	case "VIRTUAL":
		return "USDT"
	case "BANK":
		return "银行卡转账"
	case "CREDITCARD":
		return "信用卡"
	default:
		return "其他支付方式"
	}
}

func GetEmailCurrencyUnit(currency string) string {
	currency = strings.ToUpper(currency)
	switch currency {
	case "CNY":
		return "CNY"
	case "USDT":
		return "USDT"
	case "USD":
		return "USD"
	default:
		return "CNY"
	}
}

func GetCurrencyByPayType(payType string) string {
	payType = strings.ToUpper(payType)
	switch payType {
	case "VIRTUAL":
		return "USDT"
	case "CREDITCARD":
		return "USD"
	default:
		return "CNY"
	}
}

// GetAmountByCurrency 获取金额通过币种
func GetAmountByCurrency(amount float64, currency string, usdtRate float64) (cnyAmount, usdtAmount float64) {
	switch currency {
	case "CNY":
		cnyAmount = amount
		usdtAmount, _ = decimal.NewFromFloat(amount).Div(decimal.NewFromFloat(usdtRate)).Float64()
		break
	case "USDT":
		cnyAmount, _ = decimal.NewFromFloat(amount).Mul(decimal.NewFromFloat(usdtRate)).Float64()
		usdtAmount = amount
	}
	return
}
