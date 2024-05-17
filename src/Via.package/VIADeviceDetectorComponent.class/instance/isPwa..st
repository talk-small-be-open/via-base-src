testing
isPwa: aBoolean
	"PWA standalone is also detected through the start_url of the manifest. But here we detect it
	again with another method."
	aBoolean ifTrue: [ self session beStandalonePwa ]