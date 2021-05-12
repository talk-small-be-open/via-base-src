as yet unclassified
loginWithOauthToken: aString request: aRequest
	| user userData response oauthUrl |

	"TBD!"
	
	self shouldBeImplemented.

	oauthUrl := self wd propertyAt: #oauth:url.

	response := MCLPlatform runShellCommand: ('curl --silent "', oauthUrl, '/oauth/token?access_token=', aString, '"').

	userData := VIAHelper fromJson: response.

	"Falls verifikation OK ist"
	((userData includesKey: 'aud') and: [(userData at: 'aud') = (self wd propertyAt: #googleClientId)]) ifTrue: [
		user := self wd findOrCreateUserBySocialId: ('google_', (userData at: 'sub')) email: (aRequest at: 'email').
	
		"Namen übernehmen oder update etc."
		user lastName ifBlank: [
			user
				firstName: (aRequest at: 'first_name');
				lastName: (aRequest at: 'last_name').
	"			email: (userData at: 'email')."].
		
		self session loginUser: user]