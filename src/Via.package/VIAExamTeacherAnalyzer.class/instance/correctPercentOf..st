as yet unclassified
correctPercentOf: aTaskBrick
	| count total |
	
	"TODO, falls gebraucht"
	
	count := wrongBricksAndCount occurrencesOf: aTaskBrick.
	total := model studentsCount.
	
	^VIAHelper percentage: count of: total