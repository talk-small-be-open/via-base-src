as yet unclassified
linesPreformatted: aString
	| lines line stream |
	lines := OrderedCollection new.

	stream := aString readStream.
	
	[ (line := stream nextLine) isNil ] whileFalse: [
		lines add: line ].
	
	^ lines