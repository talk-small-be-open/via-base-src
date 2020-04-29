as yet unclassified
matchesSearchString: aString
	"Für Suche optimiert"
	^{activityTypeTags.
		contextTags.
		grammarTopicTags.
		topicTags} anySatisfy: [:collection | collection anySatisfy: [:each | each matchesSearchString: aString]]