as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
		
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/hellojs/1.18.7/hello.all.min.js'.
		anHtmlRoot javascript with: self wd helloJavascript]