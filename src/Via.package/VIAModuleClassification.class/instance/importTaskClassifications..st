as yet unclassified
importTaskClassifications: aCollection

	activityTypeTags := (aCollection flatCollectAsSet: #activityTypeTags).
	contextTags := (aCollection flatCollectAsSet: #contextTags).
	topicTags := (aCollection flatCollectAsSet: #topicTags).
	grammarTopicTags := (aCollection flatCollectAsSet: #grammarTopicTags).

"	durationTag := aCollection sum: #durationTag"