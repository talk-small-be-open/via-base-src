as yet unclassified
getAuthUserData: anAuthToken

	"Get the authorized users profile data. Needs the auth token from the users authorization."
	
	| response |

	response := self callMethod: 'GET' data: nil headers: {'Authorization: Bearer ', anAuthToken} endpoint: '/api/auth/user'.

	response isDictionary ifFalse: [ self signalError: 'No user data' ].

	response at: 'error' ifPresent: [:text |
"		self signalError: ('Error from API: ', text)."
		self signalError: 'Error from API:' returnData: response
	].

	^response at: 'data'