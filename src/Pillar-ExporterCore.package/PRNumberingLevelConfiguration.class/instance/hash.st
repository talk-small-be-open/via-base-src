comparing
hash
	^ self species hash bitXor: (parent hash bitXor: numbering hash)