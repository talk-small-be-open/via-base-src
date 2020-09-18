as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot javascript with: self wd helloJavascript]