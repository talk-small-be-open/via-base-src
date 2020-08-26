as yet unclassified
reference: aString
	| uuid |
	super reference: aString.
	
	uuid := aString copyAfter: $:.
	
	asset := VIADatabase current findAssetByUuid: (UUID fromString36: uuid)