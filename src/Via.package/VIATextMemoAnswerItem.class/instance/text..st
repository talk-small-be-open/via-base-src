accessing
text: anObject

	text := anObject ifNotNil: [ VIAHelper sanitizeUserTextInput: anObject ]