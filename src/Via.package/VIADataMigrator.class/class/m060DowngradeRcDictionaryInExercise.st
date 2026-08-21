as yet unclassified
m060DowngradeRcDictionaryInExercise
"	VIAHelper allInstancesOfClass: VIATaskExercise do: [ :each |
		| old new |
		old := each instVarNamed: 'answers'.
		(old isKindOf: RcKeyValueDictionary) ifTrue: [ 
			new := Dictionary newFrom: old.
			each instVarNamed: 'answers' put: new ]
	]"

	| counter |
	counter := 0.

	VIADatabase current websiteDatasDo: [ :eachWd |
		eachWd portfolios do: [ :eachPortfolio |
			eachPortfolio moduleExercises do: [ :eachModEx |
				eachModEx taskExercises do: [ :each |
					| old new |
					old := each instVarNamed: 'answers'.
					(old isKindOf: RcKeyValueDictionary) ifTrue: [ 
						new := Dictionary newFrom: old.
						each instVarNamed: 'answers' put: new ]
				]
			].
			counter := counter + 1.
			GsFile gciLogServer: ('Migration m060DowngradeRcDictionaryInExercise at: ', counter asString).
			VIAHelper commitTransaction. 
		]
	]