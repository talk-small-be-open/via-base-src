testing
parameterAt: aKey IsIntegerIn: someParameters
	| value |
	value := someParameters at: aKey ifAbsent: [ PRPropertyError signal: 'You need a parameter ', aKey , ' inside ', self asString ]. 
	^ someParameters at: aKey put: value asInteger; yourself
	