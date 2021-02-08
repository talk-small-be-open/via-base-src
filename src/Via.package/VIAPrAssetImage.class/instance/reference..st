as yet unclassified
reference: aString
	| uuid |
	super reference: aString.

	"Legacy syntax without img:"
	asset ifNil: [
		uuid := aString.
	
		asset := VIADatabase current findAssetByUuid: (UUID fromString36: uuid).

		"Typo check"
		(asset isKindOf: VIAImageAsset) ifFalse: [ asset := nil ] ]