accessing
lastDocumentItem
	^ document children isEmpty ifFalse: [ document children last ]