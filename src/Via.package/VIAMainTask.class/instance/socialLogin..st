as yet unclassified
socialLogin: aRequest
	"Allenfalls social login?"
	aRequest at: 'network' ifPresent: [:network |
		network = 'facebook' ifTrue: [self loginWithFacebookToken: (aRequest at: 'access_token') ].
		network = 'google' ifTrue: [self loginWithGoogleToken: (aRequest at: 'access_token') request: aRequest]
	]