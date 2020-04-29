testing
matchesSearchClassification: anotherClassification

	anotherClassification activityTypeTags ifNotBlank: [:tags |
		(activityTypeTags includesAny: tags) ifFalse: [^false]
	].

	anotherClassification contextTags ifNotBlank: [:tags |
		(contextTags includesAny: tags) ifFalse: [^false]
	].

	anotherClassification topicTags ifNotBlank: [:tags |
		(topicTags includesAny: tags) ifFalse: [^false]
	].

	anotherClassification grammarTopicTags ifNotBlank: [:tags |
		(grammarTopicTags includesAny: tags) ifFalse: [^false]
	].

	anotherClassification durationTag ifNotNil: [:dt |
		durationTag = dt ifFalse: [^false]
	].
	
	^true