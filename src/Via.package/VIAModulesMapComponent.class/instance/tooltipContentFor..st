as yet unclassified
tooltipContentFor: aGeocode
	| s |

	s := JSStream new.

	s nextPutAll: 'return '.
	
	aGeocode allGeocodes do: [ :each |
		| module id |

		module := (self moduleFor: each).
		id := self miniCardIdForModule: module.

		s nextPutAll: '$("#', id,'").html() ' ]
	separatedBy: [ s nextPutAll: ' + ' ].

	^ s asFunction: #(options).
