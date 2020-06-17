via
pillarString: aString
	| pillarDocument |
	pillarDocument := (VIAHelper pillarFromPillarString: aString).

	"Simplify, wenn nur 1 Paragraph"
	(pillarDocument size = 1 and: [pillarDocument children first isKindOf: PRParagraph]) ifTrue: [
		| original |
		original := pillarDocument children first.
		pillarDocument setChildren: #().
		pillarDocument addAll: original children.
	].
	
	self pillar: pillarDocument.