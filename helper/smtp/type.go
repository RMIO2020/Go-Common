package smtp

const (
	Registered = "Registered" // 注册
	ResetPwd   = "ResetPwd"   // 找回、重置 登录密码
	SetGoogle  = "SetGoogle"  // 设置 Google
	BdEmail    = "BdEmail"    // 绑定邮箱【已登录的状态下】
	BdPhone    = "BdPhone"    // 绑定手机【已登录的状态下】
	Recharge   = "Recharge"   // 充值到账【已登录的情况下】

	/* 系统邮件类型 */
	SysRecharge               = "SysRecharge"               // 充值系统消息
	SysWithdrawal             = "SysWithdrawal"             // 提现申请
	SysCommodityPaySuccess    = "SysCommodityPaySuccess"    // 商品订单支付成功
	SysServiceOrderPaySuccess = "SysServicePaySuccess"      // 商品及服务费订单支付成功（包含预缴服务费的商品订单）
	SysServiceBillPaySuccess  = "SysServiceBillPaySuccess"  // 服务费账单支付成功
	SysServiceRecharge        = "SysServiceRecharge"        // 预缴服务费支付成功
	SysServiceFeeInsufficient = "SysServiceFeeInsufficient" // 预付服务费不足催缴
	SysOverdueBillPayment     = "SysOverdueBillPayment"     // 账单逾期催缴
	SysOverdueBillShutdown    = "SysOverdueBillShutdown"    // 账单逾期停机
)
