as yet unclassified
getAuthorizationToken: aCodeString redirect: aRedirectString
	| postData response |

	"TODO: Why the hell do we need the aRedirectString for? Its a server-to-server, so why redirect?! Ask novu"

	"OPTIMIZE: redirect_uri not needed but maybe API wants it? Check it."
	postData := {
		'client_id'->self oauthId.
		'client_secret'->self oauthSecret.
		'grant_type'->'authorization_code'.
		'response_type'->'code'.
		'code'->aCodeString.
		'redirect_uri'->aRedirectString.
	} aD.
	
	response := self postData: postData endpoint: '/oauth/token'.

	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].

	response at: 'error' ifPresent: [:text |
		self signalError: 'OAuth error while granting auth-code.' returnData: response
	].
	
	^ response at: 'access_token'.
