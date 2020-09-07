package rocket

import (
	"context"
	"fmt"
	"github.com/apache/rocketmq-client-go/v2/consumer"
	"github.com/apache/rocketmq-client-go/v2/primitive"
	"testing"
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
