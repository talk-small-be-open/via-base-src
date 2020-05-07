as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	self requestContext response doNotCache.
	
	anHtmlRoot beHtml5.
	
	anHtmlRoot htmlAttributes
		at: 'lang' put: self session languageCode.
"		at: 'class' put: 'no-js'." "Für modernizr"
		

	self isDevelopment
		ifTrue: [
			anHtmlRoot title: '3-2-1 DEVELOPMENT ', self session language.
			anHtmlRoot bodyAttributes addClass: 'development'.

"			anHtmlRoot javascript url: 'https://getuikit.com/migrate.min.js'."
		]
		ifFalse: [
			anHtmlRoot title: (self session website title).
		].

	anHtmlRoot meta
		charset: 'utf-8'.
		
	"Viewport"
	anHtmlRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'.
	
	"Tell robots not to follow links"
	anHtmlRoot meta
		name: 'ROBOTS';
		content: 'INDEX, NOFOLLOW'.
		
	"Favicon"
	anHtmlRoot link
		beShortcutIcon;
		url: '/favicon.ico'.

	"Body attributes"
	"Trick fuer Reload-force bei Safari?"
"	anHtmlRoot bodyAttributes at: 'onunload' put: ''."