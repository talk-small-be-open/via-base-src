as yet unclassified
htmlFromPillar: aPillarString
	| pillar |
	^[
		pillar := VIAPrDocumentParser parse: aPillarString.
		VIAPrHtmlWriter write: pillar]
	on: VIAPillarSyntaxError do: [:e | '[OOPS! TEXT-ERROR]<!-- Error parsing Pillar: ', e description,' -->']