as yet unclassified
clearTestdriveBlocks
	(1 to: 100) do: [ :each |
		self db propertyRemoveAt: (#testdriveInitBlock, each greaseString) asSymbol.
	]