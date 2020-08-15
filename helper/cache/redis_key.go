package cache

const (
	UserToken      = "login_token_"          // 用户-token
	GoogleKey      = "GG:KEY:"               // 用户-token
	Transaction    = "Tx:"                   // 处理交易 Token
	CachePayOrder  = "CachePayOrder:"        // 处理交易 Token
	OrderCountDown = "ping:order:down:"      //拼团倒计时
	SetGoogleSms   = "USER_SMS_BD_GOOGLE_"   // 设置google发送短信验证码
	SetGoogleEmail = "USER_EMAIL_BD_GOOGLE_" // 设置google发送邮件验证码
	RegisterEmail  = "EMAIl_REGISTERING_"    //注册邮箱验证码
	RegisterPhone  = "SMS_REGISTERED_"       //注册手机验证码
	RetrieveEmail  = "EMAIl_RETRIEVE_"       //找回密码邮箱验证码
	RetrievePhone  = "SMS_RETRIEVE_"         //找回密码手机验证码
)

/* 获取支付缓存 Key */
func GetCachePayOrderKey(OrderNo string) string {
	return CachePayOrder + OrderNo
}
