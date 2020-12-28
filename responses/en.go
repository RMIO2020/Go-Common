package resp

var En = subMsgType{
	//基本操作
	Success:              "success",
	UnknownError:         "Unknown error, please contact support",
	ParameterError:       "Parameter error",
	OperationFailed:      "Operation failed",
	MissingParameters:    "Missing parameters",
	NOTFound:             "not found",
	InternalDataError:    "internal data error",
	InvalidOperation:     "Invalid operation",
	UserNotAuthorize:     "User is not authorized",
	FrequencyTooFast:     "Frequency too fast",
	DataAlreadyExists:    "Data already exists",
	DataDoesNotExist:     "Data does not exist",
	CurrencyNotSupported: "Currency not supported",
	PayOrderRepeat:       "Order has been paid, please do not repeat payment",
	LackPlatform:         "Lack of platform",
	AmountSmall:          "The withdrawal amount is too small",
	CanNotDoThis:         "Can't do this",
	UnopenedPlatform:     "Unopened Platform",
	UnsupportedType:      "Unsupported Type",
	UntrustedSource:      "Untrusted Source",

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
	NoProductData:            "No product data",
	InventoryShortage:        "Inventory shortage",
	OffShelf:                 "Product is no longer available",
	NotAvailable:             "Not available for purchase",
	TotalInventoryNotUpdate:  "The number of orders placed is less than the total number of miners and no modification is allowed",
	LotNumberExists:          "Lot number already exists",
	IncorrectProductQuantity: "Incorrect product quantity",
	BillEmptyMachine:         "The number of miners in the bill is zero",
	LotNumberNotExists:       "Lot number does not exist",

	// 订单
	OrderTimeOut:      "Order timeout",
	MinimumQuantity:   "Less than the minimum purchase quantity",
	MaximumQuantity:   "Maximum purchase quantity exceeded",
	NotPayableOrder:   "The order is not payable",
	StoreGreaterTotal: "预存金额大于实际支付金额",

	// 活动
	ActivityEnds:           "Activity has ended",
	ActivityParticipate:    "You have participated in the event",
	ActivityNotParticipate: "You did not participate in the event",
	ActivityNotStarted:     "Activity not started",
}
