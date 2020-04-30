protected
checkParameterAt: aKey into: someParameters
	aKey = 'value'
		ifTrue: [ ^ someParameters ]
		ifFalse: [ 
			(someParameters at: aKey) ifNil: [ ^ Dictionary with: 'value' -> aKey ].
			^ PRPropertyError signal: 'Wrong parameters on the inputFile annotation. Expected value, receive ' , aKey ]