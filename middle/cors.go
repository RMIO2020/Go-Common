package middle

import (
	"encoding/json"
	"fmt"
	resp "github.com/RMIO2020/Go-Common/responses"
	"github.com/gin-gonic/gin"
	"net/http"
)

/* 通用访问限制 */
func (M *Middle) Cors() func(c *gin.Context) {
	return func(c *gin.Context) {
		method := c.Request.Method
		c.Header("Access-Control-Allow-Origin", "*")
		c.Header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, lan, token, platform")
		c.Header("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS")
		c.Header("Access-Control-Expose-Headers", "Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type")
		c.Header("Access-Control-Allow-Credentials", "true")
		if method == "OPTIONS" {
			c.AbortWithStatus(http.StatusNoContent)
		}
		c.Next()
	}
}

/* 内部访问限制 */
func (M *Middle) InternalCors() func(c *gin.Context) {
	return func(c *gin.Context) {
		var m []string
		err := json.Unmarshal([]byte(M.InternalHosts), &m)
		if err != nil {
			resp.ErrRep(c, &resp.Elem{
				Code: resp.UnknownError,
				Msg:  err.Error(),
			}, http.StatusNotFound)
			c.Abort()
			return
		}

		vhost := "localhost"
		isOrigin := false
		method := c.Request.Method
		origin := c.Request.Header.Get("Origin") //请求头部
		for _, v := range m {
			if v == "*" {
				isOrigin = true
				goto SetOrigin
			}
			if v == origin {
				isOrigin = true
				vhost = origin
				goto SetOrigin
			}
		}

		if !isOrigin {
			fmt.Println("UntrustedSource:", origin)
			resp.ErrRep(c, &resp.Elem{
				Code: resp.UntrustedSource,
			}, http.StatusNotFound)
			c.Abort()
			return
		}

	SetOrigin:
		c.Header("Access-Control-Allow-Origin", vhost)
		c.Header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, lan, platform")
		c.Header("Access-Control-Allow-Methods", "POST, PUT, OPTIONS")
		c.Header("Access-Control-Expose-Headers", "Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type")
		c.Header("Access-Control-Allow-Credentials", "true")
		if method == "OPTIONS" {
			c.AbortWithStatus(http.StatusNoContent)
		}
		c.Next()
	}
}
