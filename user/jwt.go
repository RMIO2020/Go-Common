package user

import (
	"github.com/dgrijalva/jwt-go"
)

// 自定义结构体参数
type TokenClaims struct {
	Data DataClaims
	jwt.StandardClaims
}

// data数据
type DataClaims struct {
	UserId string `form:"user_id"`
	Token  string `form:"token"`
}

/**
 * 生成 JWT 相关
**/
type JwtCreate struct {
	NowTime     int64  // 生效时间
	ExpiresTime int64  // 失效时间
	UserId      string // 用户 id
	Token       string // 用户 token
	Secret      []byte // JWT 密钥
}

func NewCJwt(NowTime int64, ExpiresTime int64, UserId string, Token string, Secret []byte) *JwtCreate {
	return &JwtCreate{
		NowTime:     NowTime,
		ExpiresTime: ExpiresTime,
		UserId:      UserId,
		Token:       Token,
		Secret:      Secret,
	}
}

// CreateJwtToken
func (s *JwtCreate) CreateJwt() (jwtToken string, err error) {
	claims := TokenClaims{
		Data: DataClaims{
			UserId: s.UserId,
			Token:  s.Token,
		},
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: s.ExpiresTime, // 失效时间
			IssuedAt:  s.NowTime,     // 签发时间
			NotBefore: s.NowTime,     // 生效时间
		},
	}
	var jwtSecret = s.Secret
	tokenClaims := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return tokenClaims.SignedString(jwtSecret)
}

/**
 * 解析 JWT 相关
**/
type JwtParsing struct {
	Secret []byte
}

func NewParsing(Secret []byte) *JwtParsing {
	return &JwtParsing{
		Secret: Secret,
	}
}

func (s *JwtParsing) ParsingJwt(jwtString string) (*jwt.Token, error) {
	return jwt.ParseWithClaims(jwtString, &TokenClaims{}, func(token *jwt.Token) (interface{}, error) {
		return s.Secret, nil
	})
}
