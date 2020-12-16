as yet unclassified
go

	"If demo is disabled, we return a HTTP not found"
	(self wd isFeature: #demo) ifFalse: [
		self requestContext respond: [ :response |
			response
				notFound;
				contentType: WAMimeType textPlain;
				nextPutAll: 'Demo not available'
	]].
	
	"Call the main application, either logged in or not, smart."
	[self callApplication]
		on: VIAError
		do: [:error |
			self ifDevelopment: [error pass].
			self displayMessageAndCallPublicApplication: error messageText]