as yet unclassified
sendFile: aFilePath contentType: aContentTypeString named: aNameString requestContext: aRequestContext
	"Sends the file to the browser"
	| sanitizedName utf8encodedName |
	aRequestContext respond: [ :response |

		sanitizedName := self sanitizeToLatin1: aNameString.
		utf8encodedName := self urlencode: aNameString.

		response
			contentType: aContentTypeString; "'application/pdf'"
			doNotCache;
			headerAt: 'X-Sendfile' put: aFilePath; "Apache"
			headerAt: 'X-Accel-Redirect' put: aFilePath; "nginx"
			headerAt: 'Content-Disposition' put: 'attachment; filename="' , sanitizedName , '"; filename*=UTF-8''''', utf8encodedName.
"instead of:			attachmentWithFileName: sanitizedName"]