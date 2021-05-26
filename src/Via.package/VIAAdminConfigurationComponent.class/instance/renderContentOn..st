as yet unclassified
renderContentOn: html
	html skAnchorButton
		callback: [ self removeNils ];
		with: 'Remove empty values'.
		
	self renderGlobalSettingsOn: html.
	self renderWebsiteBasicsOn: html.
	self renderWebsiteSettingsOn: html.
	self renderMailingSettingsOn: html.