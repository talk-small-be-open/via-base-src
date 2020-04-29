as yet unclassified
reference: aString
	super reference: aString.
	asset := VIADatabase current findAssetByUuid: (UUID fromString36: aString)