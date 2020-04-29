as yet unclassified
visitParagraph: aParagraph
	"Kein echtes p-Tag, weil das nicht verschachtelt werden kann"
	canvas tag
		name: 'div';
		parameterAt: 'class' put: 'pillarParagraph';
		with: [ super visitParagraph: aParagraph ]