as yet unclassified
visitParagraph: aParagraph
	"Kein echtes p-Tag, weil das nicht verschachtelt werden kann"
	html div
		class: 'pillarParagraph';
		with: [ super visitParagraph: aParagraph ]