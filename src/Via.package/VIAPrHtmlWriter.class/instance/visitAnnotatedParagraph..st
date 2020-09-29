as yet unclassified
visitAnnotatedParagraph: anAnnotatedParagraph
	"Kein echtes p-Tag, weil das nicht verschachtelt werden kann"
	canvas tag
		name: 'div';
		parameterAt: 'class' put: 'pillarParagraph';
		parameterAt: 'class' put: anAnnotatedParagraph annotation;
		with: [ super visitParagraph: anAnnotatedParagraph ]