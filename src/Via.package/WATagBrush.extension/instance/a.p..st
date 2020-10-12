*Via
a: anAttribute p: aValue
	"Short version"
	^ self attributeAt: anAttribute put: (aValue ifNil: [ '' ])