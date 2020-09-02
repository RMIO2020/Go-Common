package middle

import "github.com/go-redis/redis"

const (
	KeyLanguage = "lan"
	KeyPlatform = "platform"
)

var Middlewares *Middle

type Middle struct {
	Redis         *redis.Client
	InternalHosts string
}

func Init(R *redis.Client, InternalHost string) {
	Middlewares = &Middle{
		Redis:         R,
		InternalHosts: InternalHost,
	}
}

func New() *Middle {
	return Middlewares
}
