as yet unclassified
callMethod: aMethod data: aDictionaryLike headers: aHeadersCollection endpoint: anEndpointPath
	| postData output response cmd postTempFile outTempFile url httpStatus |

	url := self apiUrl.

	url ifBlank: [ self signalError: 'Authentication server not configured' ].

	outTempFile := VIATempFile json.
	
	aDictionaryLike ifNotBlank: [
		postData := aDictionaryLike asDictionary.
		postTempFile := VIATempFile json
			write: postData asJson;
			yourself ].

	cmd := String streamContents: [ :s |
		"Catch curl errors"
		s << 'if '.

		s << 'curl --request '.
		s << aMethod asUppercase.
		s << ' --silent -w "%{http_code}" --header "Content-Type: application/json; charset=UTF-8" --header "Accept: application/json" '.

		s << ' --output "'.
		s << outTempFile filePath.
		s << '" '.

		aHeadersCollection ifNotBlank: [
			aHeadersCollection do: [:each |
				s << ' --header "'.
				s << each.
				s << '" ']
		].
	
		postData ifNotBlank: [
			s << ' --data @'.
			s << postTempFile filePath.
			s space ].

		s << url.
		s << anEndpointPath.
		
		"Catch curl errors"
		s << '; then echo ""; else echo "CURLFAILED"; fi'
	].

	output := (MCLPlatform runShellCommand: cmd) trimBoth.
	
	self ifDevelopment: [ Transcript show: output; cr ].

	(output endsWith: 'CURLFAILED') ifTrue: [ self signalError: 'Error with curl communication' ].
	
	httpStatus := output asInteger.
	response := VIAHelper fromJson: outTempFile contents.

	"Add http status to result"
	response at: 'httpStatus' put: httpStatus.

	"Signal error and keep tempfile JSON"
"	response isDictionary ifTrue: [
		response at: 'message' ifPresent: [ :m | self signalError: m ]]."
	
	"If no error then delete JSON temp file"
	self ifProduction: [
		self debugEnabled ifFalse: [
			outTempFile delete.
			postTempFile ifNotNil: [postTempFile delete] ] ].
	
	^ response