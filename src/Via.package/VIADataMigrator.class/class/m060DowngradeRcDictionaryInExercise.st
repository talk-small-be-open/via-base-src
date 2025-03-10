as yet unclassified
m060DowngradeRcDictionaryInExercise
	VIAHelper allInstancesOfClass: VIATaskExercise do: [ :each |
		| old new |
		old := each instVarNamed: 'answers'.
		(old isKindOf: RcKeyValueDictionary) ifTrue: [ 
			new := Dictionary newFrom: old.
			each instVarNamed: 'answers' put: new ]
	]