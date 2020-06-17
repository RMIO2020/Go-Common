package page

import "github.com/gin-gonic/gin"

type Data struct {
	Page      int `json:"page" from:"default=1"`
	PageSize  int `json:"page_size" from:"default=10"`
	Count     int `json:"count"`
	TotalPage int `json:"total_page"`
	Offset    int `json:"-" from:"default=0"`
}

func GetPageParams(c *gin.Context) *Data {
	var params Data
	_ = c.ShouldBindJSON(&params)

	if params.Page <= 0 {
		params.Page = 1
	}
	params.Offset = (params.Page - 1) * params.PageSize
	return &params
}

func SetPageData(Page, PageSize, Count int) *Data {
	return &Data{
		Page:      Page,
		PageSize:  PageSize,
		Count:     Count,
		TotalPage: Count / Page,
	}
}
