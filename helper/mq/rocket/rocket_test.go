package rocket

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	_struct "github.com/RMIO2020/Go-Wallet-Service/common/helper/mq/struct"
	"github.com/RMIO2020/Go-Wallet-Service/common/helper/smtp"
	"github.com/aliyunmq/mq-http-go-sdk"
	"github.com/apache/rocketmq-client-go/v2/consumer"
	"github.com/apache/rocketmq-client-go/v2/primitive"
	"testing"
	"time"
)

func InitTest() (err error) {
	err = Init("[\"127.0.0.1:9876\"]", 2)
	return
}

func TestNewProducer(t *testing.T) {
	err := InitTest()
	if err != nil {
		fmt.Printf("InitTest err is %+v \n", err)
	}
	per, err := Rocket.NewProducer(GroupToTest)
	if err != nil {
		fmt.Printf("NewProducer err is %+v \n", err)
	}
	fmt.Printf("per is %+v \n", per)

	result, err := per.SendSync(context.Background(), &primitive.Message{
		Topic: "test",
		Body:  []byte("Hello RocketMQ Go Client!"),
	})
	if err != nil {
		fmt.Printf("err is %+v \n", err)
	}
	fmt.Printf("result is %+v \n", result)
}

func TestMQ_NewPushConsume(t *testing.T) {
	err := InitTest()
	if err != nil {
		fmt.Printf("InitTest err is %+v \n", err)
	}
	c, err := Rocket.NewPushConsume(GroupToTest)
	if err != nil {
		fmt.Printf("NewProducer err is %+v \n", err)
	}
	fmt.Printf("c is %+v \n", c)

	err = c.Subscribe("test", consumer.MessageSelector{}, nil)
	if err != nil {
		fmt.Printf("Subscribe err is %+v \n", err)
	}
	err = c.Start()
	fmt.Printf("Start err is %+v \n", err)
}

func TestAliYun(t *testing.T) {
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
	// Tag
	tag := SystemNotice

	InitAliyun(endpoint, accessKey, secretKey, "")
	Mq := NewAliyun()
	Mq.InitProducer(instanceId, topic)

	m := &_struct.SystemNotice{
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
	m2, _ := json.Marshal(m)
	m3 := string(m2)
	ret, err := Mq.PushMsg(m3, tag)
	if err != nil {
		fmt.Printf("err : %+v \n", err)
	}
	fmt.Printf("ret : %+v \n", ret)
	fmt.Printf("ret.id : %+v \n", ret.MessageId)
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
