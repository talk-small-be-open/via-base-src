visiting
visitViaPrNoteAnnotation: aViaPrNoteAnnotation
	| contentHtml |

	contentHtml := String streamContents: [:s |
		aViaPrNoteAnnotation notes do: [ :each |
			s << each asHTMLString.
		] separatedBy: [ s << '<br/>' ].

"		MCLPlatform joinCollection: aViaPrNoteAnnotation notes delimiter: '<br/>'."
	].

	html span
		class: 'dictionaryEntry';
		attributeAt: 'data-content' put: (VIAHelper sanitizeToLatin1: contentHtml) "OPTIMIZE: EVT robuster bei nicht-latin1?";
		with: aViaPrNoteAnnotation expression