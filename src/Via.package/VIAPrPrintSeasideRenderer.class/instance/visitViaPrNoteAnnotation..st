as yet unclassified
visitViaPrNoteAnnotation: aViaPrNoteAnnotation
	html span: aViaPrNoteAnnotation expression.
	html space.
	html span: [
		html text: '['.
		aViaPrNoteAnnotation notes do: [ :each |
			html text: each ] separatedBy: [ html text: ' | ' ].
		html text: ']' ]