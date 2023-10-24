as yet unclassified
getUserDataId: anIdString clientToken: aClientToken

	"Get the authorized users profile data. Needs the auth token from the users authorization."
	
	| response |

	response := self callMethod: 'GET' data: nil headers: {'Authorization: Bearer ', aClientToken} endpoint: ('/api/partners/m2m/users/', anIdString asString).

	response isDictionary ifFalse: [ self signalError: 'No user data' ].

	"Handle API http status code"
	(response at: 'httpStatus') = 200 ifFalse: [ ^ nil ].

	"TODO: Obsolete?"
	response at: 'error' ifPresent: [:text |
		self signalError: 'Error from API:' returnData: response
	].

	^ response at: 'data'