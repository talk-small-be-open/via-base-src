as yet unclassified
arguments
	"If there are no options, interactJs wants a boolean to activate the functionality "
	^ options isNil
		ifTrue: [ Array with: true ]
		ifFalse: [ Array with: options ]