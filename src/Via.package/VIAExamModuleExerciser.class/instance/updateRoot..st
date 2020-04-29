as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
"	anHtmlRoot bodyAttributes
		at: 'onbeforeunload'
		put: 'return backButtonWarning(', ('exerciser:exam:reallyBackQM't), ');'"