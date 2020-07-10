package resp

var En = subMsgType{
	//基本操作
	Success:              "success",
	UnknownError:         "Unknown error, please contact support",
	ParameterError:       "Parameter error",
	OperationFailed:      "Operation failed",
	MissingParameters:    "Missing parameters",
	InvalidOperation:     "Invalid operation",
	UserNotAuthorize:     "User is not authorized",
	FrequencyTooFast:     "Frequency too fast",
	DataAlreadyExists:    "Data already exists",
	DataDoesNotExist:     "Data does not exist",
	CurrencyNotSupported: "Currency not supported",
	PayOrderRepeat:       "Order has been paid, please do not repeat payment",
	LackPlatform:         "Lack of platform",

	//用户
	UserExists:    "User already exists",
	UserNotExists: "User does not exist",
	LackBalance:   "Insufficient balance",

	//验证
	PasswordError:         "Username or Password error",
	TokenParsingError:     "Token parsing error",
	TokenExpire:           "Token expire",
	TokenError:            "Token error",
	TokenNotValid:         "Token is not valid",
	GoogleCodeError:       "Google code error",
	PasswordNotSet:        "Password is not set",
	PayAmountErr:          "Incorrect payment amount",
	VerificationCodeError: "Verification code error",

	// 文件
	FileUploadFail: "Upload file error",

	// 产品
	NoProductData:     "No product data",
	InventoryShortage: "Inventory shortage",
	OffShelf:          "Product is no longer available",
	NotAvailable:      "Not available for purchase",

	// 订单
	OrderTimeOut:    "Order timeout",
	MinimumQuantity: "Less than the minimum purchase quantity",
	MaximumQuantity: "Maximum purchase quantity exceeded",
}
