as yet unclassified
prettyUrl
	| paramsVar |
	
	paramsVar := self urlParamsFragment.
	paramsVar ifNotEmpty: [paramsVar := '?&', paramsVar].
	
	^self applicationUrl, '/c/', code greaseString, paramsVar