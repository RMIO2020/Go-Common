package payment

// GetEmailPayType 获取邮件的支付方式
func GetEmailPayType(payType string) string {
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
	switch currency {
	case "CNY":
		return "元"
	case "USDT":
		return "USDT"
	default:
		return "元"
	}
}
