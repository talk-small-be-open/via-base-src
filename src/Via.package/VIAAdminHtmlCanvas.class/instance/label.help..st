as yet unclassified
label: aString help: aHelpString
	self label: [ 
		self span: aString.
		self space.
		self span class: 'help'; with: aHelpString
	]