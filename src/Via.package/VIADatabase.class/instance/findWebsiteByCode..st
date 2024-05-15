as yet unclassified
findWebsiteByCode: aString
	^ self websites detect: [:each | each code = aString] ifNone: [ nil ]