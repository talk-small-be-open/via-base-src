rendering
renderSummaryPageOn: html
	html div: 'summary'.
	html div: self points asString.
	html anchor
		callback: [ self reset ];
		with: 'Reset'