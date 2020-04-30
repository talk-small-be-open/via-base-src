comparing
hash
	^ super hash bitXor: (self reference hash bitXor: self embedded hash)