as yet unclassified
renderContentOn: html
	self renderNextOn: html.
	html scriptDefer: javascript.
	
	onetime ifTrue: [ javascript := nil ]