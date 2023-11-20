as yet unclassified
pillarFromPillarOneliner: aPillarStringOneliner
	| pillarDocument |

	aPillarStringOneliner ifNil: [ ^ nil ].

	pillarDocument := VIAPrDocumentParser parse: aPillarStringOneliner.
	
	"Simplify, weil nur 1 Paragraph."
	(pillarDocument size = 1 and: [pillarDocument children first isKindOf: PRParagraph]) ifTrue: [
		| original |
		original := pillarDocument children first.
		pillarDocument setChildren: #().
		pillarDocument addAll: original children.
	].

	^ pillarDocument