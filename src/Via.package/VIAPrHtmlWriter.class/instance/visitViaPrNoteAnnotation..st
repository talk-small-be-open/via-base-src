as yet unclassified
visitViaPrNoteAnnotation: aViaPrNoteAnnotation
	| contentHtml |

	contentHtml := MCLPlatform joinCollection: aViaPrNoteAnnotation notes delimiter: '<br/>'.

	canvas tag
		name: 'span';
		parameterAt: 'class' put: 'dictionaryEntry';
"macht kein Sinn, ist mit JS		parameterAt: 'data-content' put: (VIAHelper sanitizeToLatin1: contentHtml) asHTMLString;"
		with: aViaPrNoteAnnotation expression