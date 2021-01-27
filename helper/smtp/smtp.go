package smtp

import (
	"fmt"
	"github.com/RMIO2020/GO-PIN/sync"
	"net/smtp"
	"strings"
)

var SMTP *Smtp

type Smtp struct {
	Host      string
	SendUser  string
	SendPwd   string
	ReplyUser string
	UserName  string
}

func New() *Smtp {
	return SMTP
}

func Init(Host, User, Pwd, Reply string) {
	SMTP = &Smtp{
		Host:      Host,
		SendUser:  User,
		SendPwd:   Pwd,
		ReplyUser: Reply,
	}
}

func (E *Smtp) SendToMail(to, subject, body, MailType string) error {
	hp := strings.Split(E.Host, ":")
	auth := smtp.PlainAuth("", E.SendUser, E.SendPwd, hp[0])
	var ContentType string
	if MailType == "html" {
		ContentType = "Content-Type: text/" + MailType + "; charset=UTF-8"
	} else {
		ContentType = "Content-Type: text/plain" + "; charset=UTF-8"
	}

	msg := []byte("To: " + to + "\r\nFrom: " + E.ReplyUser + ">\r\nSubject: " + subject + "\r\n" + ContentType + "\r\n\r\n" + body)
	sendTo := strings.Split(to, ";")
	fmt.Println("Send Email ............")
	sync.Go(func() {
		err := smtp.SendMail(E.Host, auth, E.SendUser, sendTo, msg)
		if err != nil {
			fmt.Println("Send Email Result:", err.Error())
		}
	})
	return nil
}
