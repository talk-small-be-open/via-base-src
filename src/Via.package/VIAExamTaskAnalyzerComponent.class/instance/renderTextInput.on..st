rendering-visitor
renderTextInput: aTextInput on: html
	self renderAnalyticsBoxOf: aTextInput on: html with: [
		html span
			class: 'clozeTextPlaceholder';
"			style: 'background-color: hsl(0, ', ((self wrongPercentOf: aTextInput) asString),'%, 60%)';"
			with: (MCLPlatform joinCollection: aTextInput solutions delimiter: ' / ').
	]