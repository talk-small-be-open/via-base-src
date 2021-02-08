as yet unclassified
untouchedModuleExercises
	"the modules which are checkable but have been untouched. So they are useless."
	^self moduleExercises select: [:each | each isUntouched and: [ each module isCheckable ] ]