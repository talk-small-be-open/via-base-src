as yet unclassified
uploadTextFile
	| uploader |
	
	uploader := VIAUploaderComponent new.
	
	self show: uploader onAnswer: [:fileReference |
		fileReference ifNotNil: [
			(self confirm: 'Do you want to keep the existing texts or overwrite them?' title: 'Overwrite?' buttonText: 'Load new only' cancelText: 'Overwrite all')
				ifTrue: [ self db loadUiTextsNoOverwrite: fileReference ]
				ifFalse: [ self db loadUiTextsOverwrite: fileReference ]
			
	]]