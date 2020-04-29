testing
hasSocialLogin
	^ self hasGoogleLogin or: [ self hasFacebookLogin ]