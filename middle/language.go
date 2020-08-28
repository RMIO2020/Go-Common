package middle

import (
	"github.com/gin-gonic/gin"
)

func (M *Middle) AuthLanguage() func(c *gin.Context) {
	return func(c *gin.Context) {
		Language := c.GetHeader(KeyLanguage)
		if Language != "" {
			c.Set(KeyLanguage, Language)
		}
	}
}
