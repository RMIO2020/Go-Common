package cache

const (
	UserToken      = "login_token_"          // 用户-token
	GoogleKey      = "GG:KEY:"               // 用户-token
	Transaction    = "Tx:"                   // 处理交易 Token
	CachePayOrder  = "CachePayOrder:"        // 处理交易 Token
	OrderCountDown = "ping:order:down:"      //拼团倒计时
	SetGoogleSms   = "USER_SMS_BD_GOOGLE_"   // 设置google发送短信验证码
	SetGoogleEmail = "USER_EMAIL_BD_GOOGLE_" // 设置google发送邮件验证码
)

/* 获取支付缓存 Key */
func GetCachePayOrderKey(OrderNo string) string {
	return CachePayOrder + OrderNo
}
