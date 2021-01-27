package rocket

import (
	"encoding/json"
	"errors"
	"fmt"
	_struct "github.com/RMIO2020/Go-Common/helper/mq/struct"
	"github.com/RMIO2020/Go-Common/helper/smtp"
	resp "github.com/RMIO2020/Go-Message/common/responses"
	"github.com/aliyunmq/mq-http-go-sdk"
	"testing"
	"time"
)

func InitTest() (Mq *AliyunMQ) {
	// 设置HTTP接入域名（此处以公共云生产环境为例）
	endpoint := "http://1839080919510286.mqrest.cn-beijing.aliyuncs.com"
	// AccessKey 阿里云身份验证，在阿里云服务器管理控制台创建
	accessKey := ""
	// SecretKey 阿里云身份验证，在阿里云服务器管理控制台创建
	secretKey := ""
	// 所属的 Topic
	topic := "RM-Test"
	// Topic所属实例ID，默认实例为空
	instanceId := "MQ_INST_1839080919510286_BXSQIsss"

	InitAliyun(endpoint, accessKey, secretKey, "")
	Mq = NewAliyun()
	Mq.InitProducer(instanceId, topic)
	Mq.InitConsumer(instanceId, topic, "GID_Notice", SystemNotice)
	return
}

func TestAliyunMQ_PullMsg(t *testing.T) {
	Mq := InitTest()

	over := make(chan bool)
	go func() {
		sm := &_struct.SystemNotice{
			Type:     _struct.Cash,
			User:     "测试脚本",
			Platform: "pin-min",
			CashNotice: &_struct.CashNotice{
				Type:     smtp.SysRecharge,
				Time:     time.Now().Format("2006-01-02 15:04:05"),
				Amount:   "0.01",
				Currency: "USDT",
			},
		}
		sm2, _ := json.Marshal(sm)
		sm3 := string(sm2)
		for true {
			ret, err := Mq.PushMsg(sm3, SystemNotice)
			if err != nil {
				fmt.Printf("Notice err : %+v \n", err)
			}
			fmt.Printf("Notice ret : %+v \n", ret)
			fmt.Printf("Notice ret.id : %+v \n", ret.MessageId)
			time.Sleep(time.Second)
		}
	}()
	go func() {
		for true {
			nm := &_struct.Notice{
				Type:     smtp.Registered,
				Email:    "shiyaojia@rockminer.com",
				Platform: "pin-min",
				Language: resp.ZhCnLan,
			}
			nm2, _ := json.Marshal(nm)
			nm3 := string(nm2)
			ret, err := Mq.PushMsg(nm3, Notice)
			if err != nil {
				fmt.Printf("SystemNotice err : %+v \n", err)
			}
			fmt.Printf("SystemNotice ret : %+v \n", ret)
			fmt.Printf("SystemNotice ret.id : %+v \n", ret.MessageId)
			time.Sleep(time.Second)
		}
	}()
	<-over
}

func TestAliyunMQ_PushMsg(t *testing.T) {
	Mq := InitTest()
	Mq.PullMsg(new(TestReadMsg).Consumption)
}

type TestReadMsg struct{}

func (T *TestReadMsg) Consumption(Data []mq_http_sdk.ConsumeMessageEntry) ([]string, error) {
	var handles []string
	for k, v := range Data {
		fmt.Println("K:", k, "| v body:", v.MessageBody)
		handles = append(handles, v.ReceiptHandle)
	}
	return handles, errors.New("read over")
}
