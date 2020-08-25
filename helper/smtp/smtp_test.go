package smtp

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

	Init(vHandle.Config.Email.Host, vHandle.Config.Email.SendUser, vHandle.Config.Email.Password, vHandle.Config.Email.Password)

}

func TestSmtp_Send(t *testing.T) {
	InitDb()

	to := "shiyaojia@rockminer.com"

	err := SMTP.SendToMail(to, "", "test", "")

	fmt.Println("err", err)
}
