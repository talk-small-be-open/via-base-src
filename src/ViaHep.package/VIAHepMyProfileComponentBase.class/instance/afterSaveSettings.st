as yet unclassified
afterSaveSettings
	user useAutologin
		ifTrue: [
			self session addAutologinUser: user.
		]
		ifFalse: [
			self session removeAutologinUser: user.
		]