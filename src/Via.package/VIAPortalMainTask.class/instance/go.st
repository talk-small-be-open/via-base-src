as yet unclassified
go

	"Portal is active if more than 1 websites"
	self db websites size <= 1 ifTrue: [
		self requestContext respond: [ :response |
			response
				notFound;
				contentType: WAMimeType textPlain;
				nextPutAll: 'Portal not available'
	]].
	
	"Call the main application, either logged in or not, smart."
	[self callApplication]
		on: VIAError
		do: [:error |
			self ifDevelopment: [error pass].
			self displayMessageAndCallPublicApplication: error messageText]