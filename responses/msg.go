package resp

import "github.com/gin-gonic/gin"

var (
	EnLan      = "en"
	ZhCnLan    = "zhCn"
	defaultMsg = UnknownError
)

// SubMsgType 子信息类型
type subMsgType map[string]string

const (
	//基本操作
	Success           = "Success"
	UnknownError      = "UnknownError"
	ParameterError    = "ParameterError"
	OperationFailed   = "OperationFailed"
	MissingParameters = "MissingParameters"

	// 用户
	UserExists    = "UserExists"
	UserNotExists = "UserNotExists"

	//验证
	PasswordError     = "PasswordError"
	TokenParsingError = "TokenParsingError"
	TokenExpire       = "TokenExpire"
	TokenError        = "TokenError"
	TokenNotValid     = "tokenNotValid"

	// 文件
	FileUploadFail = "FileUploadFail"
)

// RespBody 响应体
type Elem struct {
	Ok   bool
	Code string
	Data interface{}
}

// GetMsg 获取响应信息
func GetMsg(b *Elem, lan string) (response gin.H) {
	if b.Ok {
		//成功
		var (
			msg   string
			exist bool
		)
		switch lan {
		case EnLan:
			msg, exist = En[Success]
			if !exist {
				msg = En[defaultMsg]
			}
		case ZhCnLan:
			msg, exist = ZhCn[Success]
			if !exist {
				msg = ZhCn[defaultMsg]
			}
		default:
			msg, exist = En[Success]
			if !exist {
				msg = En[defaultMsg]
			}
		}
		return gin.H{"code": true, "message": msg, "data": b.Data}
	} else {
		//失败
		var (
			msg   string
			exist bool
		)
		switch lan {
		case EnLan:
			msg, exist = En[b.Code]
			if !exist {
				msg = En[defaultMsg]
			}
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
		return gin.H{"code": false, "message": msg}
	}
}
