package _struct

const (
	SMS   = "SMS"
	Email = "Email"
)

type Notice struct {
	Type     string
	Email    string
	Phone    string
	Code     string
	Platform string
	Language string
}
