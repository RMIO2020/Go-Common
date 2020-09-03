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
	InternalIp    string
}

func Init(R *redis.Client, InternalHost, InternalIp string) {
	Middlewares = &Middle{
		Redis:         R,
		InternalHosts: InternalHost,
		InternalIp:    InternalIp,
	}
}

func New() *Middle {
	return Middlewares
}
