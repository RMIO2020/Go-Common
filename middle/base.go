package middle

import "github.com/go-redis/redis"

const (
	KeyLanguage = "lan"
	KeyPlatform = "platform"
)

var Middlewares *Middle

type Middle struct {
	Redis *redis.Client
}

func Init(R *redis.Client) {
	Middlewares = &Middle{
		Redis: R,
	}
}

func New() *Middle {
	return Middlewares
}
