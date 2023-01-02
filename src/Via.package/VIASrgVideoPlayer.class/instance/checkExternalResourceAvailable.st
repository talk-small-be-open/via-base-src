as yet unclassified
checkExternalResourceAvailable
	| response responseData apiKey apiSecret |

	apiKey := self db propertyAt: #srg:api:key.
	apiSecret := self db propertyAt: #srg:api:secret.

	(apiKey isBlank or: [ apiSecret isBlank ]) ifTrue: [ self error: 'No SRG API credentials' ].

	"Would need to setup certificates in GemStone, but we dont want that"
	GsSecureSocket disableCertificateVerificationOnClient.
	
	"OPTIMIZE: Do not get token every single time. But hey, we use this just for admins"
	response := ZnClient new
		beOneShot;
		url: 'https://api.srgssr.ch/oauth/v1/accesstoken?grant_type=client_credentials';
		accept: 'application/json';
		username: apiKey password: apiSecret;
		get;
		response.
	
	response isError ifTrue: [ self error: 'Could not get access-token of SRG API.' ].

	response isSuccess ifTrue: [
		| accessToken |

		responseData := VIAHelper fromJson: response contents.
		accessToken := (responseData at: 'access_token').

		response := ZnClient new
			beOneShot;
			url: ('https://api.srgssr.ch/videometadata/v2/', self videoId, '/mediaComposition');
			accept: 'application/json';
			headerAt: 'Authorization' put: ('Bearer ', accessToken);
			queryAt: 'bu' put: self businessUnit asLowercase;
			get;
			response.

"			response isError ifTrue: [ self error: 'Could not get video metadata with SRG API.' ]."
		
			"Strangely SRG sends back a 203 status some times. From a proxy or so, probably not intended.
			We read it as success"
			"^ response isSuccess"
			^ #(200 201 202 203 204) includes: response code
			
				
	]