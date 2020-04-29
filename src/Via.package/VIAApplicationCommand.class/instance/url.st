as yet unclassified
url
	| commandVar paramsVar |
	commandVar := 'c=', code greaseString.
	
	paramsVar := self urlParamsFragment.
	paramsVar ifNotEmpty: [paramsVar := '&', paramsVar].
	
	^self applicationUrl, '?', commandVar, paramsVar