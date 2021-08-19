as yet unclassified
callMethod: aMethod data: aDictionaryLike headers: aHeadersCollection endpoint: anEndpointPath
	| postData output response cmd tempFile url |

	url := self apiUrl.

	url ifBlank: [ self signalError: 'Authentication server not configured' ].
	
	aDictionaryLike ifNotBlank: [
		postData := aDictionaryLike asDictionary.
		tempFile := VIATempFile json
			write: postData asJson;
			close;
			yourself ].

	cmd := String streamContents: [ :s |
		"Catch curl errors"
		s << 'if '.

		s << 'curl --request '.
		s << aMethod asUppercase.
		s << ' --silent --header "Content-Type: application/json; charset=UTF-8" --header "Accept: application/json" '.

		aHeadersCollection ifNotBlank: [
			aHeadersCollection do: [:each |
				s << ' --header "'.
				s << each.
				s << '" ']
		].
	
		postData ifNotBlank: [
			s << ' --data @'.
			s << tempFile filePath.
			s space ].

		s << url.
		s << anEndpointPath.
		
		"Catch curl errors"
		s << '; then echo ""; else echo "CURLFAILED"; fi'
	].

	output := (MCLPlatform runShellCommand: cmd) trimBoth.
	
	self ifDevelopment: [ Transcript show: output; cr ].

	(output endsWith: 'CURLFAILED') ifTrue: [ self signalError: 'Error with curl communication' ].
	
	response := VIAHelper fromJson: output.

	"Signal error and keep tempfile JSON"
"	response isDictionary ifTrue: [
		response at: 'message' ifPresent: [ :m | self signalError: m ]]."
	
	"If no error then delete JSON temp file"
	self ifProduction: [
		self debugEnabled ifFalse: [
			tempFile ifNotNil: [tempFile delete] ] ].
	
	^ response