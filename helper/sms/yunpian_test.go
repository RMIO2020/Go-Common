package sms

import (
	"fmt"
	"testing"
)

func InitDb() {

}

func TestYunPian_SingleSend(t *testing.T) {
	InitDb()

	mobile := "+8618577857212"
	text := "【ROCKMINER】您的验证码是12345"

	result, err := YP.SingleSend(mobile, text)

	fmt.Println("err", err)
	fmt.Println("result", result)
}
