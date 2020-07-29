package helper

import (
	"crypto/md5"
	"encoding/base64"
	"fmt"
	"github.com/google/uuid"
	"github.com/skip2/go-qrcode"
	"math/rand"
	"os"
	"time"
)

func GetProjectRoot() (path string, err error) {
	path, err = os.Getwd()
	return
}

func CreateQrCodeBase64(params string) (encoded string, err error) {
	q, err := qrcode.New(fmt.Sprintf(params), qrcode.Medium)
	if err != nil {
		return
	}
	// Optionally, disable the QR Code border.
	q.DisableBorder = true
	png, err := q.PNG(256)
	if err != nil {
		return
	}
	encoded = fmt.Sprintf("data:image/jpg;base64,%v", base64.StdEncoding.EncodeToString(png))
	return
}

// MD5 使用md5对数据进行加密
func MD5(str string) string {
	md5str := fmt.Sprintf("%x", md5.Sum([]byte(str)))
	return md5str
}

// SwitchTimeStampToStr 将传入的时间戳转为时间
func SwitchTimeStampToStr(timeStamp int64) string {
	t := time.Unix(timeStamp, 0)
	return t.Format("2006-01-02 15:04:05")
}

// Uid 生成uuid
func Uid() string {
	return uuid.Must(uuid.NewRandom()).String()
}

var defaultLetters = []rune("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

// RandomString 随机字符串
func RandomString(n int, allowedChars ...[]rune) string {
	var letters []rune
	if len(allowedChars) == 0 {
		letters = defaultLetters
	} else {
		letters = allowedChars[0]
	}

	b := make([]rune, n)
	for i := range b {
		b[i] = letters[rand.Intn(len(letters))]
	}
	return string(b)
}

func CreatePayOrderNo(Sum int, Platform string) string {
	str := CreateOrderSn(Sum)
	return str
}

func CreateOrderSn(Sum int) string {
	return time.Now().Format("20060102150405") + RandomString(Sum)
}

func GetYesterday(layout string) (Yesterday string) {
	N := time.Now()
	Time := N.AddDate(0, 0, -1)
	Yesterday = Time.Format(layout)
	return
}
