rendering
renderAnalyticsBoxOf: aTaskBrick showCorrectness: aBoolean on: html with: aBlock 
	| wrong span |
	wrong := (self wrongPercentOf: aTaskBrick).

	span := html span
		class: 'analyticsBox'.
	aBoolean ifTrue: [
		span
			popover: ('Falsch: ', wrong asString, '%');
			style: ('background-color: ', (self cssColorForTricolorWrongness: wrong))].
	
	span with: aBlock.

"	html span: [
		html text: (self wrongPercentOf: aTextInput).
		html text: '%'.
		html space.
	]"