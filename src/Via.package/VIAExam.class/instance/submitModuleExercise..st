as yet unclassified
submitModuleExercise: aModuleExercise
	| frozenCopy |
	
	(self hasUserSubmitted: aModuleExercise user) ifFalse: [
		frozenCopy := aModuleExercise copy.
		frozenCopy beFinished.

		moduleExercises add: frozenCopy.

		"Sicherheitskopie entfernen. Aufräumen."
		moduleExercisesInProgress remove: aModuleExercise ifAbsent: [].

		^frozenCopy
	].
	
	^nil