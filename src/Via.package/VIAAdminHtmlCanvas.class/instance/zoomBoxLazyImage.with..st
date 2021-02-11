as yet unclassified
zoomBoxLazyImage: anUrlString with: aBlock
	self div class: 'zoomBox'; with: [
		| imgTag |
		imgTag := self lazyImage: anUrlString.

		aBlock ifNotNil: [
			aBlock value: imgTag
		]
	]