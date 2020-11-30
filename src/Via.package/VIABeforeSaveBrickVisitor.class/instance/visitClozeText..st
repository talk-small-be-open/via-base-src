as yet unclassified
visitClozeText: aClozeText
	super visitClozeText: aClozeText.
	
	"If one of the text inputs has a blank solution, we switch to automatically
	offer blank choices for all"
	(aClozeText textPlaceholders anySatisfy: [ :each | each isBlankIsSolution ]) ifTrue: [
		aClozeText textPlaceholders do: [ :each | each offerBlankChoice: true ]
	]