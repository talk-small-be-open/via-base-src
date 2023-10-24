as yet unclassified
idFromViaSocialId: aString

	(aString beginsWith: self viaSocialIdPrefix) ifFalse: [ ^ nil ].
	
	^ (aString allButFirst: self viaSocialIdPrefix size) asInteger