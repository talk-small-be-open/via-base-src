as yet unclassified
getClientToken
	| postData response |

	postData := {
		'client_id'->self oauthId.
		'client_secret'->self oauthSecret.
		'grant_type'->'client_credentials'.
		'response_type'->'code'.
		'scope'->'*'.
"		'redirect_uri'->aRedirectString."
	} aD.
	
	response := self postData: postData endpoint: '/oauth/token'.

	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].

	response at: 'error' ifPresent: [:text |
		self signalError: 'OAuth error while granting client credentials.' returnData: response
	].
	
	^ response at: 'access_token'