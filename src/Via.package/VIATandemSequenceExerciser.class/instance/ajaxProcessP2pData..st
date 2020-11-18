as yet unclassified
ajaxProcessP2pData: anObject
	| reload |
	reload := [ self ajaxReturnText: 'reload'. ^ self ].
	
	"A number means goto page"
	anObject isInteger ifTrue: [
		(self stepIndex ~= anObject) ifTrue: [
			self gotoStepIndex: anObject. reload value ]
	].

	"An array means the sequence of the pages (for syncing shuffled order)"
	anObject isArray ifTrue: [
		self createSequence: anObject
	].
	
	anObject = 'correct' ifTrue: [ self currentIsCorrect. self goAhead. reload value ].
	anObject = 'notCorrect' ifTrue: [ self currentIsNotCorrect. self goAhead. reload value ].

	anObject = 'restart' ifTrue: [ "TBD" reload value ].