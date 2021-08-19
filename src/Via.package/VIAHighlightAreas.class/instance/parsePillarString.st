as yet unclassified
parsePillarString
	[
	self clearForParsing.
	
	pillarDocument := VIAPrDocumentParser parse: pillarString markersDo: [:marker |
		self addAreaFromMarker: marker].

	self cleanAreaShelf.
	self rewritePillarString.
	self analyzeWholeWordsOnly.
	
	self beParseOk
	]
	on: VIAPillarSyntaxError do: [:e |
		self beParseError: e messageText]