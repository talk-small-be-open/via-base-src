as yet unclassified
loginUsingCurlWithGoogleToken: aString request: aRequest
	| user userData response |

"Siehe https://developers.google.com/identity/sign-in/web/backend-auth"

"	Google Schlüssel: m5c-Q02L5vCiUu1rMc0vb5LK
	Google Client-ID: 470503913313-ur0fjs4ti1lvjos4pob4t5asp7q9v8di.apps.googleusercontent.com
	API-Schlüssel: AIzaSyDp52UNJSyyIHAIJeCZQ3PUw6KMF1jQ7Sw"

	response := MCLPlatform runShellCommand: ('curl --silent "https://www.googleapis.com/oauth2/v3/tokeninfo?access_token=', aString, '"').

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