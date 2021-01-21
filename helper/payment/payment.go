package payment

import "strings"

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
