package user

import (
	"fmt"
	"testing"
)

func TestCJwt(t *testing.T) {
	var key = []byte("rockx-jwt")
	jwtObj := NewCJwt(1587202577, 1587202577, "123", "123", key)
	fmt.Printf("jwtObj: %+v \n", jwtObj)

	jwt, err := jwtObj.CreateJwt()
	fmt.Printf("CreateJwt err: %+v \n", err)
	fmt.Printf("CreateJwt jwt: %+v \n", jwt)

	ParsingObj := NewParsing(key)
	fmt.Printf("ParsingObj: %+v \n", ParsingObj)

	user, err := ParsingObj.ParsingJwt(jwt)
	fmt.Printf("ParsingJwt err: %+v \n", err)
	fmt.Printf("ParsingJwt user: %+v \n", user)

}
