package smtp

import (
	"fmt"
	"testing"
)

func InitDb() {
	Host := "smtpdm.aliyun.com:80"
	User := "no-reply@smtp.rockminer.com"
	Pwd := "ROCKsmtp9745"
	Reply := "no-reply@rockminer.com"

	Init(Host, User, Pwd, Reply)
}

func TestSmtp_Send(t *testing.T) {
	InitDb()

	to := "shiyaojia@rockminer.com"

	err := SMTP.SendToMail(to, "omg", "test", "html")

	fmt.Println("err", err)
}
