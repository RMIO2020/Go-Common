package middle

import (
	resp "github.com/RMIO2020/Go-Common/responses"
	"github.com/gin-gonic/gin"
)

func (M *Middle) AuthLanguage() func(c *gin.Context) {
	return func(c *gin.Context) {
		Language := c.GetHeader(KeyLanguage)
		if Language != resp.EnLan && Language != resp.ZhCnLan {
			Language = resp.ZhCnLan
		}
		c.Set(KeyLanguage, Language)
	}
}
