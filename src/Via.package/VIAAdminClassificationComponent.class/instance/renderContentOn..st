rendering
renderContentOn: html
	html form: [
		self renderTagClass: VIATopicTag on: html.
		self renderTagClass: VIAContextTag on: html.
		self renderTagClass: VIAActivityTypeTag on: html.
		self renderTagClass: VIAGrammarTopicTag on: html.
		self renderTagClass: VIADurationTag on: html]