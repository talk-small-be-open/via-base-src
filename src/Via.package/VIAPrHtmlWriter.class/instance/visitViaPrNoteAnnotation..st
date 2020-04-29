as yet unclassified
visitViaPrNoteAnnotation: aViaPrNoteAnnotation
	| contentHtml |

	contentHtml := MCLPlatform joinCollection: aViaPrNoteAnnotation notes delimiter: '<br/>'.

	canvas tag
		name: 'span';
		parameterAt: 'class' put: 'dictionaryEntry';
		parameterAt: 'data-content' put: (VIAHelper sanitizeToLatin1: contentHtml) asHTMLString "OPTIMIZE: EVT robuster bei nicht-utf8";
		with: aViaPrNoteAnnotation expression