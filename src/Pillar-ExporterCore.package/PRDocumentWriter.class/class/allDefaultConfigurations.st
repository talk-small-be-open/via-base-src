accessing
allDefaultConfigurations
	| result |
	
	result := Dictionary new.
	self allSubclassesDo: [ :e | 
		e isAbstract
			ifFalse: [ result addAll: e defaultConfigurations  ] ].
		
	^ result