package resp

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

var (
	EnLan      = "en"
	ZhCnLan    = "zhCn"
	defaultMsg = UNKNOWNError
)

// SubMsgType 子信息类型
type subMsgType map[int]string

const (
	// 系统
	Success           = 0
	UNKNOWNError      = 10000
	PARAMSTERError    = 10001
	OperationFailed   = 10002
	MissingParameters = 10003
	NOTFound          = 10004
	InternalDataError = 10005
	InvalidOperation  = 10006

	// 用户
	UserExists    = 60000
	UserNotExists = 60001

	//验证
	PasswordError     = 70000
	TokenParsingError = 70001
	TokenExpire       = 70002
	TokenError        = 70003
	TokenNotValid     = 70004

	// 文件
	FileUploadFail = 20000

	// 产品
	NoProductData = 30000
)

// RespBody 响应体
type Elem struct {
	Ok   bool
	Code int
	Data interface{}
	Msg  string
}

// GetMsg 获取响应信息
func GetMsg(b *Elem, lan string) (response gin.H) {
	if b.Ok {
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
	if b.Msg != "" {
		msg = msg + b.Msg
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
