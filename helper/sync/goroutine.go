package sync

func Go(method func()) {
	go func() {
		defer func() {
			_ = recover()
		}()
		method()
	}()
}
