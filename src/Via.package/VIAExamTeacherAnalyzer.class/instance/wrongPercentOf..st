as yet unclassified
wrongPercentOf: aTaskBrick
	| count total |
	count := wrongBricksAndCount occurrencesOf: aTaskBrick.
	total := model studentsCount.
	
	^VIAHelper percentage: count of: total