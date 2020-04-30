as yet unclassified
renderElement: aNumber
	| result |
	result := ((aNumber - 1) \\ 26 + 1 + 96) asCharacter asString.
	((aNumber - 1) / 26) asFloat floor timesRepeat: [ result := result , '''' ].
	^ result