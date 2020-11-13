as yet unclassified
parsePillarString
	[
	self pillarDocument: (VIAPrDocumentParser parse: pillarString).
	self beParseOk
	]
	on: VIAPillarSyntaxError do: [:e |
		self beParseError: e messageText]