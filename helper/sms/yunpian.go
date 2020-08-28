package sms

import "github.com/RMIO2020/Go-Message/common/helper/request"

var YP *YunPian

type YunPian struct {
	Host   string
	ApiKey string
}

func InitYp(Host, ApiKey string) {
	YP = &YunPian{
		Host:   Host,
		ApiKey: ApiKey,
	}
}

func NewYp() *YunPian {
	return YP
}

func (Y *YunPian) SingleSend(Mobile, Text string) (result string, err error) {
	params := request.ReqParams{}
	params["apikey"] = Y.ApiKey
	params["mobile"] = Mobile
	params["text"] = Text
	Url := Y.Host + "/sms/single_send.json"
	result, err = request.Request(request.POST, Url, params, "")
	return
}
