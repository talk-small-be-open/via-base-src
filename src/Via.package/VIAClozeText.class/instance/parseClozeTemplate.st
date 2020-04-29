as yet unclassified
parseClozeTemplate

	self clearForParsing.
	
	[
	pillarDocument := VIAPrDocumentParser
		parse: clozeTemplateString
		markersDo: [:marker | self addPlaceholderFromMarker: marker].

	self cleanPlaceholderShelf.
	self rewriteTemplateString.
	self beParseOk.
	] on: VIAPillarSyntaxError do: [:e |
		self beParseError: e messageText]
