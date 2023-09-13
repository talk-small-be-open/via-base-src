*Via
class: aString if: aBoolean else: anElseString
	aBoolean
		ifTrue: [ self class: aString ]
		ifFalse: [ self class: anElseString ]