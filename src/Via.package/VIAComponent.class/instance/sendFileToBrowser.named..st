as yet unclassified
sendFileToBrowser: aLocalFileReference named: aString
	"Sends the file to the browser"
	
	aLocalFileReference contentType. "ensure that we have the mimetype"
	
	self requestContext respond: [ :response |
		response
			contentType: aLocalFileReference contentType; "'application/pdf'"
			doNotCache;
			headerAt: 'X-Sendfile' put: aLocalFileReference filePath; "Apache"
			headerAt: 'X-Accel-Redirect' put: aLocalFileReference filePath; "nginx"
			"document: aFile rawContents asString;"
			attachmentWithFileName: aString ]