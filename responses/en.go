package resp

var En = subMsgType{
	//基本操作
	Success:                    "success",
	UnknownError:               "Unknown error, please contact support",
	ParameterError:             "Parameter error",
	OperationFailed:            "Operation failed",
	MissingParameters:          "Missing parameters",
	NOTFound:                   "not found",
	InternalDataError:          "internal data error",
	InvalidOperation:           "Invalid operation",
	UserNotAuthorize:           "User is not authorized",
	FrequencyTooFast:           "Frequency too fast",
	DataAlreadyExists:          "Data already exists",
	DataDoesNotExist:           "Data does not exist",
	CurrencyNotSupported:       "Currency not supported",
	PayOrderRepeat:             "Order has been paid, please do not repeat payment",
	LackPlatform:               "Lack of platform",
	AmountSmall:                "The withdrawal amount is too small",
	CanNotDoThis:               "Can't do this",
	UnopenedPlatform:           "Unopened Platform",
	UnsupportedType:            "Unsupported Type",
	UntrustedSource:            "Untrusted Source",
	StartTimeNotGreaterEndTime: "The start time cannot be greater than the end time",

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
	InventoryShortage:        "Out of stock, please try again later",
	OffShelf:                 "Product is no longer available",
	NotAvailable:             "Not available for purchase",
	TotalInventoryNotUpdate:  "The number of orders placed is less than the total number of miners and no modification is allowed",
	LotNumberExists:          "Lot number already exists",
	IncorrectProductQuantity: "Incorrect product quantity",
	BillEmptyMachine:         "The number of miners in the bill is zero",
	LotNumberNotExists:       "Lot number does not exist",
	CurrencyNotConsistent:    "The currency is not consistent",

	// 订单
	OrderTimeOut:                       "Order timeout",
	MinimumQuantity:                    "Less than the minimum purchase quantity",
	MaximumQuantity:                    "Maximum purchase quantity exceeded",
	NotPayableOrder:                    "The order is not payable",
	StoreGreaterTotal:                  "The deposit amount is greater than the actual payment amount",
	SingleOrderNotEditStoreOrderStatus: "Single person group cannot modify the order status of pre stored service charge",
	LackDoubleHostingAddress:           "Missing double wallet address",
	DailySettlementRequires:            "Daily settlement requires at least # units",

	// 活动
	ActivityEnds:           "Activity has ended",
	ActivityParticipate:    "You have participated in the event",
	ActivityNotParticipate: "You did not participate in the event",
	ActivityNotStarted:     "Activity not started",
}
