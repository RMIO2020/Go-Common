package resp

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

var (
	EnLan      = "en"
	ZhCnLan    = "zhCn"
	defaultMsg = UnknownError
)

// SubMsgType 子信息类型
type subMsgType map[int]string

const (
	// 系统
	Success              = 0
	UnknownError         = 10000
	ParameterError       = 10001
	OperationFailed      = 10002
	MissingParameters    = 10003
	NOTFound             = 10004
	InternalDataError    = 10005
	InvalidOperation     = 10006
	UserNotAuthorize     = -10050
	FrequencyTooFast     = 10007
	DataAlreadyExists    = 10008
	DataDoesNotExist     = 10009
	CurrencyNotSupported = 10010
	PayOrderRepeat       = 10011
	LackPlatform         = 10012

	// 文件
	FileUploadFail = 20000

	// 产品
	NoProductData     = 30000
	InventoryShortage = 30001

	// 用户
	UserExists    = 60000
	UserNotExists = 60001
	LackBalance   = 60002

	//验证
	PasswordError         = 70000
	TokenParsingError     = 70001
	TokenExpire           = 70002
	TokenError            = 70003
	TokenNotValid         = 70004
	GoogleCodeError       = 70005
	PasswordNotSet        = 70006
	PayAmountErr          = 70007
	VerificationCodeError = 70008

	//订单
	OrderTimeOut    = 80000
	MinimumQuantity = 80001
	MaximumQuantity = 80002
)

// RespBody 响应体
type Elem struct {
	Ok      bool
	Code    int
	Data    interface{}
	Msg     string
	MsgOver bool
}

// GetMsg 获取响应信息
func GetMsg(b *Elem, lan string) (response gin.H) {
	if b.Ok && b.Code == 0 {
		b.Code = Success
	}
	var (
		msg   string
		exist bool
	)
	switch lan {
	case ZhCnLan:
		msg, exist = ZhCn[b.Code]
		if !exist {
			msg = ZhCn[defaultMsg]
		}
	default:
		msg, exist = En[b.Code]
		if !exist {
			msg = En[defaultMsg]
		}
	}
	if b.MsgOver == true {
		msg = b.Msg
	} else {
		if b.Msg != "" {
			msg = msg + " | " + b.Msg
		}
	}
	return gin.H{"code": b.Code, "message": msg, "data": b.Data}
}

func SuccessRep(c *gin.Context, b *Elem) {
	c.JSON(http.StatusOK, GetMsg(b, c.GetString("lan")))
	return
}

func ErrRep(c *gin.Context, b *Elem, HttpCode int) {
	c.JSON(HttpCode, GetMsg(b, c.GetString("lan")))
	return
}

func GetMsgStr(b *Elem, lan string) (msg string) {
	var exist bool
	switch lan {
	case ZhCnLan:
		msg, exist = ZhCn[b.Code]
		if !exist {
			msg = ZhCn[defaultMsg]
		}
	default:
		msg, exist = En[b.Code]
		if !exist {
			msg = En[defaultMsg]
		}
	}
	if b.MsgOver == true {
		msg = b.Msg
	} else {
		if b.Msg != "" {
			msg = msg + " | " + b.Msg
		}
	}
	return
}
