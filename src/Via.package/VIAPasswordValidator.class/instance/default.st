as yet unclassified
default
	self validationGroup: [
		self validatePresence of: #password.
		self validatePasswordLength].
	self validationGroup: [
		self validatePresence of: #passwordConfirmation.
		self validatePasswordConfirmation]