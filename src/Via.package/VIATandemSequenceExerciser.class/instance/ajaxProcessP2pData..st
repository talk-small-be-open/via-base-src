as yet unclassified
ajaxProcessP2pData: anObject
	| reload |
	reload := [ self ajaxReturnText: 'reload'. ^ self ].
	
	"A number means goto page"
"	Transcript show: anObject asString; cr."
	anObject isInteger ifTrue: [
		(self stepIndex ~= anObject) ifTrue: [
			self gotoStepIndex: anObject. reload value ]
	].

	"OBSOLETE, we sync in server side"
	"An array means the sequence of the pages (for syncing shuffled order)"
"	anObject isArray ifTrue: [
		self createSequence: anObject
	]."

	anObject isString ifTrue: [	
		(anObject beginsWith: 'correct') ifTrue: [
			| index |
	"		self currentIsCorrect."
			index := (anObject findTokens: '-') second asInteger.
			self beCorrect: index.
			self goAhead.
			reload value
		].

		(anObject beginsWith: 'notCorrect') ifTrue: [
			| index |
			index := (anObject findTokens: '-') second asInteger.
	"		self currentIsNotCorrect."
			self beNotCorrect: index.
			self goAhead.
			reload value
		].

		anObject = 'restart' ifTrue: [ "TBD" reload value ].
	]