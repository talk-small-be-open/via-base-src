as yet unclassified
removeModule: aModule
	modules remove: aModule ifAbsent: [].
	moduleExercises removeKey: aModule ifAbsent: [].
	
	"dirty, but harry"
	lastOpenedModule = aModule ifTrue: [ lastOpenedModule := nil ].
	lastOpenedPalloncini = aModule ifTrue: [ lastOpenedPalloncini := nil ].
	lastOpenedVocabolario = aModule ifTrue: [ lastOpenedVocabolario := nil ].