rendering-visitor
renderInputEditorFor: aBrick on: html with: aBlock
	html div class: 'inputEditor'; with: [
		aBrick uiStyles ifNotBlank: [ :styles |
			html div class: 'pull-right'; with: [
				html select
					beOptional;
					list: styles;
					on: #uiStyle of: aBrick ]].
		aBlock value.
	]