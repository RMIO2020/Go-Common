package resp

var ZhCn = subMsgType{
	//基本操作
	Success:           "成功",
	UNKNOWNError:      "未知错误，请联系支持",
	PARAMSTERError:    "参数错误",
	OperationFailed:   "操作失败",
	MissingParameters: "缺少参数",

	//用户
	UserExists:    "用户已存在",
	UserNotExists: "用户不存在",

	//验证
	PasswordError:     "密码错误",
	TokenParsingError: "token解析错误",
	TokenExpire:       "token过期",
	TokenError:        "token错误",
	TokenNotValid:     "token未生效",

	// 文件
	FileUploadFail: "文件上传失败",
}
