as yet unclassified
addAsset: anAsset
	anAsset ifNil: [ ^ self ].
	assets addIfNotPresent: anAsset