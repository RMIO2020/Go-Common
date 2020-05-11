package resp

var En = subMsgType{
	//基本操作
	Success:           "success",
	UNKNOWNError:      "Unknown error, please contact support",
	PARAMSTERError:    "Parameter error",
	OperationFailed:   "Operation failed",
	MissingParameters: "Missing parameters",

	//用户
	UserExists:    "User already exists",
	UserNotExists: "User does not exist",

	//验证
	PasswordError:     "Password error",
	TokenParsingError: "Token parsing error",
	TokenExpire:       "Token expire",
	TokenError:        "Token error",
	TokenNotValid:     "token is not valid",

	// 文件
	FileUploadFail: "Upload file error",
}
