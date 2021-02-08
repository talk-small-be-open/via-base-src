as yet unclassified
reference: aString
	| uuidString uuid |
	super reference: aString.
	
	uuidString := aString copyAfter: $:.

	uuid := [UUID fromString36: uuidString] ifError: [nil].

	uuid ifNotNil: [
		asset := VIADatabase current findAssetByUuid: uuid.

		"Typo check"
		(asset isKindOf: self assetClass) ifFalse: [ asset := nil ]		
	]