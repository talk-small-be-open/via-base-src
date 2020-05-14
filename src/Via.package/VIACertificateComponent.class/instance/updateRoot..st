as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
"		addPrint;
		addScreen;"
		url: '/certificate/certificate.css'.
		
	anHtmlRoot stylesheet url: '/css/print/print.css'