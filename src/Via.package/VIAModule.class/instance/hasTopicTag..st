testing
hasTopicTag: aTopicTag
	^ self tasks anySatisfy: [:each | each hasTopicTag: aTopicTag ]