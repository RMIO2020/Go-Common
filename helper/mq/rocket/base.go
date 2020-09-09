package rocket

import (
	"encoding/json"
	"errors"
	resp "github.com/RMIO2020/Go-Common/responses"
)

var Rocket *MQ

const (
	GroupToTest  = "Test:"
	GroupToEmail = "Email:"
)

type MQ struct {
	ProducerAddr []string
	WithRetry    int
}

func Init(ProducerAddress string, WithRetry int) (err error) {
	var ProducerAddr []string
	err = json.Unmarshal([]byte(ProducerAddress), &ProducerAddr)
	if err != nil {
		err = errors.New(resp.GetMsgStr(&resp.Elem{
			Code: resp.UnknownError,
			Msg:  err.Error(),
		}, resp.GetLan()))
		return
	}
	Rocket = &MQ{
		ProducerAddr: ProducerAddr,
		WithRetry:    WithRetry,
	}
	return
}

func New() *MQ {
	return Rocket
}
