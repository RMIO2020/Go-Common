package resp

var ZhCn = subMsgType{
	//基本操作
	Success:              "成功",
	UnknownError:         "未知错误，请联系支持",
	ParameterError:       "参数错误",
	OperationFailed:      "操作失败",
	MissingParameters:    "缺少参数",
	NOTFound:             "没有发现",
	InternalDataError:    "内部数据错误",
	InvalidOperation:     "无效操作",
	UserNotAuthorize:     "用户未授权",
	FrequencyTooFast:     "频率过快",
	DataAlreadyExists:    "数据已存在",
	DataDoesNotExist:     "数据不存在",
	CurrencyNotSupported: "暂不支持该币种支付",
	PayOrderRepeat:       "订单已付款,请勿重复支付",
	LackPlatform:         "缺少平台参数",
	AmountSmall:          "提币数额太小",
	CanNotDoThis:         "不能进行此操作",

	//用户
	UserExists:    "用户已存在",
	UserNotExists: "用户不存在",
	LackBalance:   "余额不足",

	//验证
	PasswordError:         "用户名或密码错误",
	TokenParsingError:     "token解析错误",
	TokenExpire:           "token过期",
	TokenError:            "token错误",
	TokenNotValid:         "token未生效",
	GoogleCodeError:       "谷歌验证码错误",
	PayAmountErr:          "支付金额有误",
	VerificationCodeError: "验证码错误",

	// 文件
	FileUploadFail: "文件上传失败",

	// 产品
	NoProductData:            "没有该产品数据",
	InventoryShortage:        "库存不足",
	OffShelf:                 "商品已下架",
	NotAvailable:             "不可购买",
	TotalInventoryNotUpdate:  "下单数量小于矿机总数量则不允许修改",
	LotNumberExists:          "批次号已存在",
	IncorrectProductQuantity: "产品数量不正确",
	BillEmptyMachine:         "账单的矿机数量为零",

	// 订单
	OrderTimeOut:    "订单超时",
	MinimumQuantity: "小于过最小购买数量",
	MaximumQuantity: "超过最大购买数量",
	NotPayableOrder: "该订单不可支付",
}
