accessing
htmlComponent: aComponent
	self addPart: (VIAWaHtmlEmailBody renderComponent: aComponent)