as yet unclassified
loginUsingCurlWithFacebookToken: aString
	| user userData response |

"	facebookCredentials := ZnOAuth2ConsumerData 
		key: '778873922228492'
		secret: 'c35583c1e96a76394773e2eb5cde0473'."

	response := MCLPlatform runShellCommand: ('curl --silent "https://graph.facebook.com/me?fields=email,first_name,last_name,verified&access_token=', aString, '"').

	userData := VIAHelper fromJson: response.

	self ifDevelopment: [
		(userData includesKey: 'verified') ifFalse: [
			userData
"				at: 'verified' put: true;"
				at: 'email' put: 'developer.test@nobody.nowhere';
				at: 'first_name' put: 'Firstname';
				at: 'last_name' put: 'Lastname'.
		]
	].

	"Falls verifikation OK ist"
"	((userData includesKey: 'error') not and: [(userData at: 'verified') = true]) ifTrue: ["
	((userData includesKey: 'error') not) ifTrue: [
		user := self wd findOrCreateUserBySocialId: ('facebook_', (userData at: 'id')) email: (userData at: 'email').
	
		"Namen übernehmen oder update etc."
		user lastName ifBlank: [
			user
				firstName: (userData at: 'first_name');
				lastName: (userData at: 'last_name')].
		
		self session loginUser: user]