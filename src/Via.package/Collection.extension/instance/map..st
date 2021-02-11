*Via
map: aBlock
	"Create a dictionary with my values as keys and aBlock's result as values"
	| dict |
	
	dict := Dictionary new.
	
	self do: [ :each |
		dict at: each put: (aBlock value: each)
	].
	
	^ dict