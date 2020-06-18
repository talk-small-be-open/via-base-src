rendering-visitor
renderTandemSequence: aTandemSequence on: html
	html div class: 'inputEditor'; with: [

		html heading level2; with: 'Tandem sequence'.
"		html div: 'Question and answers:'."
		aTandemSequence qAndAs withIndexDo: [:each :index |
			html div: [
				html text: index asString.
				html text: '. '.
				html text: 'Question and answer'.
				html anchor
					class: 'u-pull-right';
					callback: [aTandemSequence removeQAndA: each];
					with: [html iconDelete; space; text: 'Remove this Q&A']

			].
			each acceptRenderingVisitor: self on: html.
			].
		html div class: 'topBuffer'; with: [
			html submitButton
				callback: [aTandemSequence addNewQAndA];
				with: '+ Add Q&A']]