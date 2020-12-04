rendering
renderSummaryPageOn: html
	html div class: 'summaryPage'; with: [
		html div class: 'summary'; class: self playerCss; with: [
			html t: 'tandemSequence:summaryInfo'.
			
			self ifShowCorrection: [
				html div class: 'pointsSummary'; with: [
					html t: 'tandemSequence:youHave_points_outOf_max_' p: {#points->self points. #max->self maxPoints}.
	"				html div class: 'points'; with: self points asString" ] ].

	"		html anchor
				callback: [ self reset ];
				with: 'Reset'."
			html div class: 'summaryButtons'; with: [	
				taskBrick showHistory ifTrue: [
					showHistory ifFalse: [
						html anchorButton
							callback: [ self toggleHistory ];
							with: [
								html iconShowSolution; space.
								html t: 'tandemSequence:showSolutions' ] ].
				].

				html anchorButton
					callback: [ self reset ];
					with: [
						html iconReset; space.
						html t: 'tandemSequence:reset' ] ].
		].

		showHistory ifTrue: [
			self renderHistoryOn: html ]
	]