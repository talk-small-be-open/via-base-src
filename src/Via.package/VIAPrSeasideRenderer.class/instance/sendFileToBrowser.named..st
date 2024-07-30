as yet unclassified
sendFileToBrowser: aLocalFileReference named: aString
	"Sends the file to the browser"
	
	aLocalFileReference contentType. "ensure that we have the mimetype"
	
	VIAHelper sendFile: aLocalFileReference filePath contentType: aLocalFileReference contentType named: aString requestContext: html requestContext