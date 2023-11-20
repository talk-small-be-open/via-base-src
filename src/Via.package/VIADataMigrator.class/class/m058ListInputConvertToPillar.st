as yet unclassified
m058ListInputConvertToPillar
	VIAHelper allInstancesOfClass: VIATextListInput do: [ :each |
		| new |
		new := (each instVarNamed: 'hintFragments') collect: [ :eachHint |
			eachHint isString
				ifTrue: [ VIAHelper pillarFromPillarOneliner: (VIAHelper standardizeCharacters: eachHint) ]
				ifFalse: [ eachHint ]
		].
	
		each instVarNamed: 'hintFragments' put: new.
	
	]