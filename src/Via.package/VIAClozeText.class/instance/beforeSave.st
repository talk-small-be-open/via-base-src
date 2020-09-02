as yet unclassified
beforeSave
	super beforeSave.
	
	"If one of the text inputs has a blank solution, we switch to automatically
	offer blank choices for all"
	(self textPlaceholders anySatisfy: [ :each | each isBlankIsSolution ]) ifTrue: [
		self textPlaceholders do: [ :each | each offerBlankChoice: true ]
	]