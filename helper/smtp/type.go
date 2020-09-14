package smtp

const (
	Registered = "Registered" // 注册
	ResetPwd   = "ResetPwd"   // 找回、重置 登录密码
	SetGoogle  = "SetGoogle"  // 设置 Google
	BdEmail    = "BdEmail"    // 绑定邮箱【已登录的状态下】
	BdPhone    = "BdPhone"    // 绑定手机【已登录的状态下】
	Recharge   = "Recharge"   // 充值到账【已登录的情况下】
)
