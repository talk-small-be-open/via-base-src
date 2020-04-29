as yet unclassified
renderContentOn: html
	self renderNextOn: html.
	html script: javascript.
	
	onetime ifTrue: [ javascript := nil ]