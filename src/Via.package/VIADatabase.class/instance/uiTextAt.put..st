uitext
uiTextAt: aKey put: aPillarString
	| pillarDocument |
	pillarDocument := (VIAPrDocumentParser parse: aPillarString).
	
	"Simplify, wenn nur 1 Paragraph"
	(pillarDocument size = 1 and: [pillarDocument children first isKindOf: PRParagraph]) ifTrue: [
		| original |
		original := pillarDocument children first.
		pillarDocument setChildren: #().
		pillarDocument addAll: original children.
	].

	"Parameter sollen zwecks Lesbarkeit den Namen behalten"
	VIAPrMarkerProcessor pillar: pillarDocument onEachBlock: [:marker |
		marker setName: marker text].
	
	^uiTexts at: aKey put: pillarDocument