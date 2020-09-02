package smtp

import (
	"fmt"
	"testing"
)

func InitDb() {

}

func TestSmtp_Send(t *testing.T) {
	InitDb()

	to := "shiyaojia@rockminer.com"

	err := SMTP.SendToMail(to, "omg", "test", "html")

	fmt.Println("err", err)
}
