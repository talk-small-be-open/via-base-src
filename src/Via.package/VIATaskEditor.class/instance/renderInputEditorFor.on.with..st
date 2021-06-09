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

		aBrick isPassiveMode ifTrue: [
			html badge
				class: 'success';
				title: 'This task will only save, but has no correction';
				with: 'passive mode'.
		].
			
		aBlock value.
	]