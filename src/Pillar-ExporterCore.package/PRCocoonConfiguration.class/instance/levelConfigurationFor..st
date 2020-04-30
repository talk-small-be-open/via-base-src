accessing
levelConfigurationFor: aHeader
	"I return a PRNumberingConfiguration corresponding for a Header."

	^ self perform: ('level' , aHeader level asString) asSymbol	"
	aHeader level = 1
		ifTrue: [ ^ self level1 ].
	aHeader level = 2
		ifTrue: [ ^ self level2 ].
	aHeader level = 3
		ifTrue: [ ^ self level3 ].
	aHeader level = 4
		ifTrue: [ ^ self level4 ].
	aHeader level = 5
		ifTrue: [ ^ self level5 ]"