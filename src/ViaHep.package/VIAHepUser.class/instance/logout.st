actions
logout
	| response |
	
	apiToken ifNil: [ ^ self ].
	
	response := self class callMethod: 'POST' data: nil headers: {'Authorization: Bearer ', apiToken} endpoint: '/api/auth/logout'.

	"a logout invalidates the topen"
	apiToken := nil

"	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].
	response at: 'error' ifPresent: [:text | self signalError: ('Error from API: ', text) ]"