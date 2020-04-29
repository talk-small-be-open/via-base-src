as yet unclassified
loginUsingZincWithFacebookToken: aString
	| facebookCredentials userData |

	facebookCredentials := ZnOAuth2ConsumerData 
		key: '778873922228492'
		secret: 'c35583c1e96a76394773e2eb5cde0473'.

	userData := (ZnOAuth2Session facebook: facebookCredentials)
		accessToken: aString;
		getUserData.

	"Falls verifikation OK ist"
	((userData includesKey: 'error') not and: [(userData at: 'verified') = true]) ifTrue: [
		user := self wd findOrCreateUserBySocialId: ('facebook_', (userData at: 'id')) email: (userData at: 'email').
	
		"Namen übernehmen oder update etc."
		user lastName ifBlank: [
			user
				firstName: (userData at: 'first_name');
				lastName: (userData at: 'last_name')].
		
		self session loginUser: user]