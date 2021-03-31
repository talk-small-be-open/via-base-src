rendering-visitor
renderInputEditorFor: aBrick on: html with: aBlock
	html div class: 'inputEditor'; class: aBrick className; with: [
		aBrick uiStyles ifNotBlank: [ :styles |
			html div class: 'pull-right'; with: [
				html select
					class: 'uiStyleSelect';
					beOptional;
					list: styles;
					on: #uiStyle of: aBrick ]].
		aBlock value.
	]