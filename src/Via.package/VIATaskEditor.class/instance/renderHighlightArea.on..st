rendering-visitor
renderHighlightArea: aHighlightArea on: html
	html div class: 'inputEditor'; class: aHighlightArea className; with: [
		html label: [
			html text: aHighlightArea code.
			html text: ' Text to mark:'.
		].
		html textInput
			on: #text of: aHighlightArea.
		html label: [
			html checkbox
				on: #strict of: aHighlightArea.
			html space.
			html text: 'Strictly exact marking only']]