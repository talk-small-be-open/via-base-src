visiting-document
visitReference: aReference
	canvas
		raw:
			(aReference isEmbedded
				ifFalse: [ aReference class markup ]
				ifTrue: [ aReference class markupEmbedded ]).
	aReference hasAlias
		ifTrue: [ 
			super visitReference: aReference.
			canvas raw: aReference class markupAlias ].
	canvas
		raw:
			(aReference reference isNil
				ifTrue: [ '' ]
				ifFalse: [ aReference reference ]).
	aReference hasAnchor
		ifTrue: [ 
			canvas raw: aReference class markupAnchor.
			canvas nextPutAll: aReference anchor ].
	aReference hasParameters
		ifTrue: [ 
			canvas raw: aReference class markupParameter.
			self visitParametersOf: aReference ].
	canvas
		raw:
			(aReference isEmbedded
				ifFalse: [ aReference class markup ]
				ifTrue: [ aReference class markupEmbedded ])