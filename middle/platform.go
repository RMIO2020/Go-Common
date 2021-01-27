package middle

import (
	resp "github.com/RMIO2020/Go-Common/responses"
	"github.com/gin-gonic/gin"
	"net/http"
)

const (
	PinTuan    = "pin-min"  // 拼团
	SpmMin     = "spm-min"  // 超级矿工
	RockMin    = "rock-min" // 运算力
	GsMin      = "gs-min"   // 运算力
	HostingMin = "hosting"  //
)

func (M *Middle) AuthPlatform() func(c *gin.Context) {
	return func(c *gin.Context) {
		platform := c.GetHeader(KeyPlatform)
		if platform == "" {
			resp.ErrRep(c, &resp.Elem{
				Code: resp.ParameterError,
				Msg:  "Request header must bring platform",
			}, http.StatusBadRequest)
			c.Abort()
			return
		}
		c.Set(KeyPlatform, platform)
	}
}
