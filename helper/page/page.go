package page

import (
	"github.com/gin-gonic/gin"
	"math"
)

type Data struct {
	Page      int `json:"page"`
	PageSize  int `json:"page_size"`
	Count     int `json:"count"`
	TotalPage int `json:"total_page"`
	Offset    int `json:"-"`
}

func GetPageParams(c *gin.Context) *Data {
	var params Data
	_ = c.ShouldBindJSON(&params)

	if params.Page <= 0 {
		params.Page = 1
	}
	if params.PageSize <= 0 {
		params.PageSize = 10
	}
	params.Offset = (params.Page - 1) * params.PageSize
	return &params
}

func SetPageData(Page, PageSize, Count int) *Data {
	TotalPage := math.Ceil(float64(Count / Page))
	return &Data{
		Page:      Page,
		PageSize:  PageSize,
		Count:     Count,
		TotalPage: int(TotalPage),
	}
}
