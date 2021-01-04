via
ifT: aKey then: aBlock
	"Usage:
	html ifT: 'blabla:blabla' then: [:yield | html span: 'Here we go'. yield value].
	html ifT: 'xy:z' then: [ html paragraph: 'yes we have text' ].
	"
	(VIADatabase current hasNonBlankUiText: aKey language: self session language) ifTrue: [ 
		aBlock cull: [ self t: aKey ]
	]