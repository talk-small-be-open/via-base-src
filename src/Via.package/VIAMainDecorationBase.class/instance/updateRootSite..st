as yet unclassified
updateRootSite: anHtmlRoot

	"CSS from the site repository"
	anHtmlRoot stylesheet url: '/site/css/', self session website stylesheetFilename.

	"Projects main Javascript"
	anHtmlRoot javascript defer; url: '/site/js/scripts.js'.
	anHtmlRoot javascript defer; url: ('/site/js/', self session website scriptsFilename).