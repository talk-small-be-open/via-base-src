*Via
selectKindOf: aClass
	^self select: [ :each | each isKindOf: aClass]