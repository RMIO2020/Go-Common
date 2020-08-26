package cache

const (
	// 登录
	UserToken = "login_token_" // 用户-token
	GoogleKey = "GG:KEY:"      // 用户-token

	// 拼团
	OrderCountDown = "ping:order:down:" //拼团倒计时
	Transaction    = "Tx:"              // 处理交易 Token

	// 支付
	CachePayOrder = "CachePayOrder:" // 支付缓存

	// 注册
	RegisterEmail = "EMAIl_REGISTERING_" //注册邮箱验证码
	RegisterPhone = "SMS_REGISTERED_"    //注册手机验证码

	// 找回密码
	RetrieveEmail = "EMAIl_RETRIEVE_" //找回密码邮箱验证码
	RetrievePhone = "SMS_RETRIEVE_"   //找回密码手机验证码

	// 设置 google
	SetGoogleSms   = "USER_SMS_BD_GOOGLE_"   // 设置google发送短信验证码
	SetGoogleEmail = "USER_EMAIL_BD_GOOGLE_" // 设置google发送邮件验证码

	// 收益补数据
	IncomeStartT = "Income:Start" //收益开始时间
	IncomeEndT   = "Income:End"   //收益结束时间
)

/* 获取支付缓存 Key */
func GetCachePayOrderKey(OrderNo string) string {
	return CachePayOrder + OrderNo
}

func GetRegisterEmail(Email string) string {
	return RegisterEmail + Email
}
