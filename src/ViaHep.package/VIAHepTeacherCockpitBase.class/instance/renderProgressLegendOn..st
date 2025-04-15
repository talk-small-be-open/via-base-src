rendering
renderProgressLegendOn: html
	html div class: 'legend'; with: [ 
		html div pT: 'teacherCockpit:legend:progress'.
		1 to: 3 do: [ :index |
				"reusing the UI texts for the progress symbols"
"				html t: ('tocca:legend:progress', index asString).
				html space."
				html iconProgress: index.
		].
		html div pT: 'teacherCockpit:legend:correctness'.
		0 to: 100 by: 10 do: [ :each |
			html span
				class: ('correctness correctness', each asString);
				with: (each asString, '%').
		]
	]