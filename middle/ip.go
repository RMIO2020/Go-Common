package middle

import (
	"encoding/json"
	"fmt"
	resp "github.com/RMIO2020/Go-Common/responses"
	"github.com/gin-gonic/gin"
	"net/http"
)

func (M *Middle) AuthIP() func(c *gin.Context) {
	return func(c *gin.Context) {
		CliIP := c.ClientIP()
		fmt.Println("CliIP:", CliIP)
		var Ips []string
		err := json.Unmarshal([]byte(M.InternalIp), &Ips)
		if err != nil {
			resp.ErrRep(c, &resp.Elem{
				Code: resp.UnknownError,
				Msg:  err.Error(),
			}, http.StatusNotFound)
			c.Abort()
			return
		}

		isGoOut := true
		for _, Ip := range Ips {
			if Ip == "*" || Ip == CliIP {
				isGoOut = false
				goto Next
			}
		}
		if !isGoOut {
			resp.ErrRep(c, &resp.Elem{
				Code: resp.UntrustedSource,
			}, http.StatusNotFound)
			c.Abort()
			return
		}

	Next:
		c.Next()
	}
}
