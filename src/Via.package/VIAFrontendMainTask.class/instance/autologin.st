as yet unclassified
autologin

	self session importAutologinUsers.

	self session autologinUsers ifNotBlank: [ :users |

		"Simpel case: 1 cookie. Login directly"
		users size = 1 ifTrue: [
			self session loginUser: users anyOne remember: true.
			self session loginMethod: 'autologin-cookie' ]

	]