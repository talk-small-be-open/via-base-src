rendering
renderSummaryPageOn: html
	html div class: 'summaryPage'; with: [
		html div class: 'summary'; class: self playerCss; with: [
			html t: 'tandemSequence:summaryInfo'.
			
			self ifShowCorrection: [
				html div class: 'pointsSummary'; with: [
					| p mp |
					p := self points.
					mp := self maxPoints.
					html t: 'tandemSequence:youHave_points_outOf_max_' p: {#points->p. #max->(mp max: p)}.
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
								html iconShowSolution; break.
								html t: 'tandemSequence:showSolutions' ] ].
				].

				html anchorButton
					callback: [ self reset ];
					with: [
						html iconReset; break.
						html t: 'tandemSequence:reset' ] ].
		].

		showHistory ifTrue: [
			self renderHistoryOn: html ]
	]