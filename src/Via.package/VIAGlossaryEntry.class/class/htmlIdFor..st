as yet unclassified
htmlIdFor: aText
	^ 'glossary_entry_', (VIAHelper sanitizeToSafeAscii: aText) asLowercase