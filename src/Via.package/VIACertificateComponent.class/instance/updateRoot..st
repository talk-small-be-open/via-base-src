as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
"		addPrint;
		addScreen;"
		url: '/files/certificate/certificate.css'.
		
	anHtmlRoot stylesheet url: '/files/css/print/print.css'