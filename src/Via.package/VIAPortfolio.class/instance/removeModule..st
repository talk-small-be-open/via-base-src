as yet unclassified
removeModule: aModule
	modules remove: aModule ifAbsent: [].
	moduleExercises removeKey: aModule ifAbsent: [].
	
	"dirty, but harry"
	lastOpenedModule = aModule ifTrue: [ lastOpenedModule := nil ].
	lastOpenedCommentatio = aModule ifTrue: [ lastOpenedCommentatio := nil ].
	lastOpenedVocabulo = aModule ifTrue: [ lastOpenedVocabulo := nil ].