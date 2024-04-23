as yet unclassified
openGlossaryEditorFor: aGlossary
	| viewer |
	viewer := VIAPluggableComponent new
"		titleText: (anAsset displayName);"
		content: [:html :me |
			html preformatted: aGlossary createGlossaryString
		];
		showCloseButton: true;
		yourself.
		
	self showWideLightbox: viewer