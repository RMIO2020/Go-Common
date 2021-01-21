package payment

import "strings"

// GetEmailPayType 获取邮件的支付方式
func GetEmailPayType(payType string) string {
	payType = strings.ToUpper(payType)
	switch payType {
	case "WECHAT":
		return "微信"
	case "VIRTUAL":
		return "虚拟币"
	default:
		return "其他支付方式"
	}
}

func GetEmailCurrencyUnit(currency string) string {
	currency = strings.ToUpper(currency)
	switch currency {
	case "CNY":
		return "元"
	case "USDT":
		return "USDT"
	default:
		return "元"
	}
}

func GetCurrencyByPayType(payType string) string {
	payType = strings.ToUpper(payType)
	switch payType {
	case "VIRTUAL":
		return "USDT"
	default:
		return "CNY"
	}
}
