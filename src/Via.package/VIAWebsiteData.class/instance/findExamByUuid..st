finders
findExamByUuid: aUuid
	^self exams detect: [:each | each uuid = aUuid] ifNone: [nil]