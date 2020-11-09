package _struct

const (
	SMS     = "SMS"
	Email   = "Email"
	Cash    = "Cash"
	Payment = "Payment"
	Warning = "Warning"
)

type Notice struct {
	Type     string
	Email    string
	Phone    string
	Code     string
	Platform string
	Language string
}

type SystemNotice struct {
	Type          string        `json:"type" enum:"Cash,Payment,Warning"`
	User          string        `json:"user"`
	Platform      string        `json:"platform"`
	CashNotice    CashNotice    `json:"cash_notice"`
	PayNotice     PaymentNotice `json:"pay_notice"`
	WarningNotice WarningNotice `json:"warning_notice"`
}

type CashNotice struct {
	Type     string `json:"type"`
	Time     string `json:"time"`
	Amount   string `json:"amount"`
	Currency string `json:"currency"`
}

type PaymentNotice struct {
	Type         string `json:"type"`
	PayType      string `json:"pay_type"`
	Time         string `json:"time"`
	GoodsName    string `json:"goods_name"`
	GoodsNumber  string `json:"goods_number"`
	GoodsAmount  string `json:"goods_amount"`
	OrderAmount  string `json:"order_amount"`
	PayCurrency  string `json:"pay_currency"`
	PayAmount    string `json:"pay_amount"`
	ServerAmount string `json:"server_amount"`
	BillId       string `json:"bill_id"`
	BillAmount   string `json:"bill_amount"`
}

type WarningNotice struct {
	Type        string `json:"type"`
	WarningType string `json:"warning_type"`
	Time        string `json:"time"`
	GoodsName   string `json:"goods_name"`
	Balance     string `json:"balance"`
	BillId      string `json:"bill_id"`
	BillAmount  string `json:"bill_amount"`
	LateFee     string `json:"late_fee"`
	Downtime    string `json:"downtime"`
}
