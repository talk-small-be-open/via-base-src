*Via
includesKindOf: aClass
	^ self anySatisfy: [ :each | each isKindOf: aClass]