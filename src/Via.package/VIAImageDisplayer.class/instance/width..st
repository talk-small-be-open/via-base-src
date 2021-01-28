accessing
width: anObject
	width := anObject ifBlank: [nil] ifNotBlank: [ :s | s asInteger ]