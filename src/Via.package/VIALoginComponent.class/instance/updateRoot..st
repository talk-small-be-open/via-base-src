as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/hellojs/1.18.7/hello.all.min.js'.
	
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot javascript with: self wd helloJavascript]