rendering
renderSummaryPageOn: html
	html div class: 'summary'; with: [
		html t: 'tandemSequence:summaryInfo'.
		
		self ifShowCorrection: [
			html div class: 'pointsSummary'; with: [
				html div t: 'tandemSequence:yourPoints'.
				html div class: 'points'; with: self points asString ] ].

"		html anchor
			callback: [ self reset ];
			with: 'Reset'."
			
		taskBrick showHistory ifTrue: [
			showHistory ifFalse: [
				html anchorButton
					callback: [ self toggleHistory ];
					with: 'Show History' ].
			showHistory ifTrue: [
				self renderHistoryOn: html ] ] ]