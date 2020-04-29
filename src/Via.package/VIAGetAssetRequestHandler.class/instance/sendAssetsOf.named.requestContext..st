as yet unclassified
sendAssetsOf: aModule named: aString requestContext: aRequestContext
	"Sends the file to the browser"
	
	aRequestContext respond: [ :response |
		response
			contentType: nil contentType; "'application/pdf'"
			doNotCache;
			headerAt: 'X-Sendfile' put: nil filePath; "Apache"
			headerAt: 'X-Accel-Redirect' put: nil filePath; "nginx"
			"document: aFile rawContents asString;"
			attachmentWithFileName: aString ]