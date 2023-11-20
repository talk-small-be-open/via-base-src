as yet unclassified
openGlossaryEditorFor: aGlossary
	| editor |
	editor := VIAGlossaryEditor on: aGlossary.
	self showWideLightbox: editor