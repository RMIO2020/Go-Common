package sms

import (
	"fmt"
	"github.com/RMIO2020/Go-Common/helper"
	"github.com/RMIO2020/Go-Message/config"
	"testing"
)

func InitDb() {
	fmt.Println("init db")
	vHandle := config.New()
	path, _ := helper.GetProjectRoot()
	path = path + "/../../../"
	err := vHandle.InitConfig(path)
	fmt.Printf(" Config  %+v \n", vHandle)
	if err != nil {
		panic("init config failed:" + err.Error())
		return
	}

	InitYp(vHandle.Config.Yunpian.Host, vHandle.Config.Yunpian.ApiKey)
}

func TestYunPian_SingleSend(t *testing.T) {
	InitDb()

	mobile := "+8618577857212"
	text := "【ROCKMINER】您的验证码是12345"

	result, err := YP.SingleSend(mobile, text)

	fmt.Println("err", err)
	fmt.Println("result", result)
}
