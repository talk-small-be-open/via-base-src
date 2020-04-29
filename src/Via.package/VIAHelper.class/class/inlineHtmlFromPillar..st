as yet unclassified
inlineHtmlFromPillar: aPillarString
	| pillar |
	^[
		pillar := VIAPrDocumentParser parse: aPillarString.
		VIAPrInlineHtmlWriter write: pillar]
	on: VIAPillarSyntaxError do: [:e | '[OOPS! TEXT-ERROR]<!-- Error parsing Pillar: ', e description, ' -->']