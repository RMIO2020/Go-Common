package middle

import (
	resp "github.com/RMIO2020/Go-Message/common/responses"
	"github.com/gin-gonic/gin"
)

func (M *Middle) AuthLanguage() func(c *gin.Context) {
	return func(c *gin.Context) {
		Language := c.GetString(KeyLanguage)
		if Language != "" {
			c.Set(KeyLanguage, Language)
			resp.SetLan(Language)
		}
	}
}
