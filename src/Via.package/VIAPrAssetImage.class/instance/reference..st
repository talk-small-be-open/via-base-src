as yet unclassified
reference: aString
	| uuid |
	super reference: aString.

	uuid := aString.
	
	"legacy"
	(aString includes: $:) ifTrue: [
		uuid := aString copyAfter: $:
	].

	asset := VIADatabase current findAssetByUuid: (UUID fromString36: uuid).

	"Typo check"
	(asset isKindOf: VIAImageAsset) ifFalse: [ asset := nil ]