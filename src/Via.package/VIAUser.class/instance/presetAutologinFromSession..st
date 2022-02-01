as yet unclassified
presetAutologinFromSession: aSeasideSession
	useAutologin ifNil: [
		"Autologin default on if mobile device"
		useAutologin := aSeasideSession isMobileDevice ]