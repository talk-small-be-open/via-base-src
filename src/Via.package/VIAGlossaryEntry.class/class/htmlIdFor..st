as yet unclassified
htmlIdFor: aText
	^ 'glossary_entry_', (VIAHelper sanitizeToLatin1: aText) asLowercase