package helper

import (
	"encoding/base64"
	"fmt"
	"github.com/skip2/go-qrcode"
	"math"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func GetProjectRoot() (path string, err error) {
	path, err = os.Getwd()
	return
}

//生成单号
//sum 最少10位,sum 表示全部单号位数
func MakeYearDaysRand(sum int, title string) string {
	// 标头
	strs := time.Now().Format(title)
	//一年中的第几天
	days := strconv.Itoa(GetDaysInYearByThisYear())
	count := len(days)
	if count < 3 {
		//重复字符0
		days = strings.Repeat("0", 3-count) + days
	}
	//组合
	strs += days
	//剩余随机数
	sum = sum - 5
	if sum < 1 {
		sum = 5
	}

	ran := rand.New(rand.NewSource(99))
	pow := math.Pow(10, float64(sum)) - 1
	result := strconv.Itoa(ran.Intn(int(pow)))
	count = len(result)
	if count < sum {
		//重复字符0
		result = strings.Repeat("0", sum-count) + result
	}
	//组合
	strs += result
	return strs
}

//年中的第几天
func GetDaysInYearByThisYear() int {
	now := time.Now()
	total := 0
	arr := []int{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
	y, month, d := now.Date()
	m := int(month)
	for i := 0; i < m-1; i++ {
		total = total + arr[i]
	}
	if (y%400 == 0 || (y%4 == 0 && y%100 != 0)) && m > 2 {
		total = total + d + 1

	} else {
		total = total + d
	}
	return total
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
