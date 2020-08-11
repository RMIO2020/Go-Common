package rate

import (
	"github.com/go-redis/redis"
)

var Red = redis.Client{}

func Init(Redis *redis.Client) {
	Red = *Redis
}

