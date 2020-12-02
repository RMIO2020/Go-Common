package sync

import (
	"github.com/RMIO2020/Go-Wallet-Service/logger"
	"go.uber.org/zap"
)

func Go(method func()) {
	go func() {
		defer func() {
			err := recover()
			if err != nil {
				logger.Error("listen and signal failed", zap.Any("error", err), zap.Any("func", method))
			}
		}()
		method()
	}()
}
