as yet unclassified
visitAnnotatedParagraph: anAnnotatedParagraph
	"Kein echtes p-Tag, weil das nicht verschachtelt werden kann"
	html div
		class: 'pillarParagraph';
		class: anAnnotatedParagraph annotation;
		with: [ super visitParagraph: anAnnotatedParagraph ]