as yet unclassified
renderContentOn: html
	html heading t: 'examTeacherAnalyzer:title'.
	
	self renderAnalyticsLegendOn: html.
	
	html div with: [
		taskComponents withIndexDo: [:each :index |
			html heading level3; with: (index asString, '. ', (each task displayName)).
			html render: each]].
	
"	html paragraph: 'Exam analyse'.
	wrongBricksAndCount keysAndValuesDo: [:brick :wrongCount |
		html span: brick displayName.
		html span: wrongCount asString.
		html break.
	]"