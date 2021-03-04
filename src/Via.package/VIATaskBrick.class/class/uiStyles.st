as yet unclassified
uiStyles
	| key common specific |
	key := 'brickUiStyles:', self name asString.
	
	common := (self db propertyAt: 'brickUiStyles:common') ifBlank: [ #() ] ifNotBlank: [ :string | string findTokens: ', ' ].
	specific := (self db propertyAt: key) ifBlank: [ #() ] ifNotBlank: [ :string | string findTokens: ', ' ].
	
	^ common, specific