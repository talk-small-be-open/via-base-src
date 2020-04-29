as yet unclassified
displayedTagsForModule: aModule do: anEachBlock separatedBy: aSepBlock
	| classification |
	classification := aModule overallClassification.
	^(classification topicTags, classification contextTags, classification grammarTopicTags) do: anEachBlock separatedBy: aSepBlock