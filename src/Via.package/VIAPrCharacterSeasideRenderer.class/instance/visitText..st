as yet unclassified
visitText: aPillarText
	"Easy solution. OPTIMIZE: Für jeden Pillar-Typ direkt auf seaside html canvas rendern, bei Bedarf"
	aPillarText text do: [:char |
		self renderCharacter: char ]