as yet unclassified
tooltipContentFor: aGeocode
	| s modules |

	s := JSStream new.

	s nextPutAll: 'return '.

	modules := (aGeocode allGeocodes collect: [ :each | self moduleFor: each ]) asSet sortedBySortKey.
	
	modules do: [ :each |
		| id |

		id := self miniCardIdForModule: each.

		s nextPutAll: '$("#', id,'").html() ' ]
	separatedBy: [ s nextPutAll: ' + ' ].

	^ s asFunction: #(options).