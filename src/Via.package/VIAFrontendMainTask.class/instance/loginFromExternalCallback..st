as yet unclassified
loginFromExternalCallback: aRequest
	| externalUser user |

	externalUser := self am externalAuthUserClass tryLoginFromExternalCallback: aRequest website: self website.

	(externalUser notNil and: [externalUser isVerified]) ifTrue: [
		user := externalUser syncViaUserFromWebsite: self website.
		
		user ifNotNil: [
			self session
				loginUser: user;
				externalUser: externalUser.
			]]