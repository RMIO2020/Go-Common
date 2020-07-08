package cache

import (
	"errors"
	resp "github.com/RMIO2020/Go-Common/responses"
	"github.com/go-redis/redis"
	"time"
)

func BlockingKey(Redis *redis.Client, Key string, expiration time.Duration) (err error) {
	val := Redis.Get(Key).Val()
	if val != "" {
		return errors.New(resp.GetMsgStr(&resp.Elem{
			Code: resp.FrequencyTooFast,
		}, resp.GetLan()))
	}
	Redis.Set(Key, "Blocking Key", expiration)
	return
}
