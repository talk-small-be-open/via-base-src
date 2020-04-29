as yet unclassified
updateRoot: anHtmlRoot
	| ws |
	ws := self website.
	
	anHtmlRoot beHtml5.
	anHtmlRoot meta charset: 'utf-8'.
	anHtmlRoot base url: 'http://', (self db propertyAt: #localServiceDomain default: ['localhost']).

	anHtmlRoot htmlAttributes at: 'lang' put: ws languageCode.
	anHtmlRoot title: ws title.

	anHtmlRoot stylesheet url: '/files/css/', ws stylesheetFilename.

"	self updateRootJavascripts: anHtmlRoot."
	
	"Die Komponente auch noch dran lassen"
	component updateRoot: anHtmlRoot