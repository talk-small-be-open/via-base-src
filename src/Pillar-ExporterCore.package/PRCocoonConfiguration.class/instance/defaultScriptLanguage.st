accessing
defaultScriptLanguage
	<cocoonParameter:
		'Indicate the (programming) language in scripts when none is specified.
This language is used for syntax highlighting.'>
	^ self propertyAt: 'defaultScriptLanguage' default: [ self defaultDefaultScriptLanguage ]