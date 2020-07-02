package request

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
	"sort"
	"strings"
)

const (
	POST = "POST"
	GET  = "GET"
	PUT  = "PUT"
)

type ReqParams map[string]string

func SortParams(params ReqParams) string {
	keys := make([]string, len(params))
	i := 0
	for k := range params {
		keys[i] = k
		i++
	}
	sort.Strings(keys)
	sorted := make([]string, len(params))
	i = 0
	for _, k := range keys {
		sorted[i] = k + "=" + url.QueryEscape(params[k])
		i++
	}
	return strings.Join(sorted, "&")
}

func Request(method string, path string, params ReqParams) (result string, err error) {
	client := &http.Client{}
	sorted := SortParams(params)
	fmt.Printf("sorted is %+v \n", sorted)
	var req *http.Request
	if method == POST {
		req, _ = http.NewRequest(method, path, strings.NewReader(sorted))
		req.Header.Set("Content-Type", "application/x-www-form-urlencoded")
	} else {
		req, _ = http.NewRequest(method, path+"?"+sorted, strings.NewReader(""))
	}

	fmt.Println("Client Do......")
	resp, err := client.Do(req)
	if err != nil {
		return
	}

	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	result = string(body)
	return
}
