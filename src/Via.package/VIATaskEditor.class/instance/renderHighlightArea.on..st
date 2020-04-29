rendering-visitor
renderHighlightArea: aHighlightArea on: html
	html div class: 'inputEditor'; with: [
		html div: [
			html text: 'Text to mark: '.
			html text: aHighlightArea code].
		html textInput
			class: 'uk-width-1-1';
			on: #text of: aHighlightArea.
		html label: [
			html checkbox
				on: #strict of: aHighlightArea.
			html space.
			html text: 'Strictly exact marking only']]