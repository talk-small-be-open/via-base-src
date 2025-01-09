as yet unclassified
loginUsingCurlWithFacebookToken: aString
	| user userData response |

	response := MCLPlatform runShellCommand: ('curl --silent "https://graph.facebook.com/me?fields=email,first_name,last_name,verified&access_token=', aString, '"').

	userData := VIAHelper fromJson: response.

	self ifDevelopment: [
		
		Transcript crShow: response.
		
		"Faking data, if none from API"
"		(userData includesKey: 'verified') ifFalse: ["
		(userData includesKey: 'email') ifFalse: [
			userData
				at: 'email' put: 'developer.test@nobody.nowhere';
				at: 'first_name' put: 'Firstname-Dev';
				at: 'last_name' put: 'Lastname-Dev'.
		]
	].

	"Falls verifikation OK ist"
"	((userData includesKey: 'error') not and: [(userData at: 'verified') = true]) ifTrue: ["
	((userData includesKey: 'error') not) ifTrue: [
		user := self wd findOrCreateUserBySocialId: ('facebook_', (userData at: 'id')) email: (userData at: 'email').
	
		"Namen übernehmen oder update etc."
		"OPTIMIZE: Nolastname Dirty but OK"
		(user lastName isBlank or: [ user lastName = 'Nolastname' ]) ifTrue: [
			user
				firstName: (userData at: 'first_name');
				lastName: (userData at: 'last_name')].
		
		self session loginUser: user]