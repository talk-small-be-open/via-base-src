as yet unclassified
renderContentOn: html
	self isCommitted
		ifTrue: [html paragraph t: 'transaction:notAllowedToGoBack']
		ifFalse: [
			html render: payloadComponent]