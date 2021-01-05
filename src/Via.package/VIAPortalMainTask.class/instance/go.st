as yet unclassified
go

	"Portal is active if more than 1 websites exist"
	self hasPortal ifFalse: [
		self requestContext respond: [ :response |
			response
				notFound;
				contentType: WAMimeType textPlain;
				nextPutAll: 'Portal not available'
	]].
	
	[self callApplication]
		on: VIAError
		do: [:error |
			self ifDevelopment: [error pass].
			self displayMessageAndCallPublicApplication: error messageText]