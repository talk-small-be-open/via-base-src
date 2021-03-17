as yet unclassified
isUsedAsset: anAsset
	self modules do: [:eachModule |
		eachModule assetsDo: [ :each |
			each = anAsset ifTrue: [ ^ true ] ] ].
	
	^ false