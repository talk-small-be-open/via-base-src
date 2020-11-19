rendering
renderSummaryPageOn: html
	html div class: 'summary'; with: [
		html t: 'tandemSequence:summaryInfo'.
		
		self ifShowCorrection: [
			html div: self points asString ].

"		html anchor
			callback: [ self reset ];
			with: 'Reset'."
			
		taskBrick showHistory ifTrue: [
			html anchorButton
				callback: [ self toggleHistory ];
				with: 'Show History'.
			showHistory ifTrue: [
				self renderHistoryOn: html ] ] ]