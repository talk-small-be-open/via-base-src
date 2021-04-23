rendering-visitor
renderTandemSequence: aTandemSequence on: html
	self renderInputEditorFor: aTandemSequence on: html with: [

		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleSequence of: aTandemSequence.
					html text: ' Shuffle sequence']].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #showHistory of: aTandemSequence.
					html text: ' Show history']].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #showCorrection of: aTandemSequence.
					html text: ' Show correction']]
		].

		html label: 'Intro text player A / B'.
		aTandemSequence startPillarPlayerA acceptRenderingVisitor: self on: html.
		aTandemSequence startPillarPlayerB acceptRenderingVisitor: self on: html.

		html label: 'Step 2 text player A / B'.
		aTandemSequence step2PillarPlayerA acceptRenderingVisitor: self on: html.
		aTandemSequence step2PillarPlayerB acceptRenderingVisitor: self on: html.

"		html heading level2; with: 'Tandem sequence'."
"		html div: 'Question and answers:'."
		aTandemSequence qAndACount even ifFalse: [ html badgeWarning: 'Warning: Try to use an even Q&A count!' ].
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