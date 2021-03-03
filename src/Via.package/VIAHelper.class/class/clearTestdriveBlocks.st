as yet unclassified
clearTestdriveBlocks
	(1 to: 100) do: [ :each |
		self db propertyAt: (#testdriveInitBlock, each greaseString) asSymbol put: nil.
	]