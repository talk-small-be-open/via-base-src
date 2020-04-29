rendering
renderAnalyticsLegendOn: html
	html div class: 'analyticsLegend'; with: [
		html span t: 'examTeacherAnalyzer:legend:wrongColor'.
		html break.
		html div class: 'colorScale'; with: [
			0 to: 100 by: 10 do: [:each |
				html span
					style: ('padding: 2px; background-color: ', (self cssColorForTricolorWrongness: each));
					with: [
						html text: each asString.
						html text: '%'
		]]].

"		html div class: 'colorScale'; with: [
			0 to: 100 by: 10 do: [:each |
				html span
					style: ('padding: 2px; background-color: ', (self cssColorForWrongness: each));
					with: [
						html text: each asString.
						html text: '%'
		]]].

		html div class: 'colorScale'; with: [
			0 to: 100 by: 10 do: [:each |
				html span
					style: ('padding: 2px; background-color: ', (self cssColorForCorrectness: each));
					with: [
						html text: each asString.
						html text: '%'
		]]]"
	]