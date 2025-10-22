as yet unclassified
loginUser: aUser remember: aBoolean
	self loginUser: aUser.

	"Install remember cookie forcibly, regardless if user has it in settings.
	Remark: The actual autologin is only done if the users setting is set."
	aBoolean ifTrue: [
		self addAutologinUser: aUser.
	]