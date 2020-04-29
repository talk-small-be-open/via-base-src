as yet unclassified
infoOneliner
	^MCLPlatform
		joinCollection: {self durationLabel. self authorsLabel. self coAuthorsLabel} copyWithoutBlanks
		delimiter: ', '