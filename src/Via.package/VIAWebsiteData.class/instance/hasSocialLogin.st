testing
hasSocialLogin
	^ self hasGoogleLogin or: [ self hasFacebookLogin or: [ self hasOauthLogin ] ]