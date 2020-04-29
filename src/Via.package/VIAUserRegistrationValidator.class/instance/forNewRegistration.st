rulesets
forNewRegistration
	self validationGroup: [
		self validatePresence
			of: #email;
			named: #email.
		self validateEmailFormat of: #email.
		self validateUniqueEmail].

	self validatePresence of: #firstName.
	self validatePresence of: #lastName.

	self validationGroup: [
		self validatePresence of: #password.
		self validatePasswordLength].

	self validationGroup: [
		self validatePresence of: #passwordConfirmation.
		self validatePasswordConfirmation].
	
	self validateAcceptanceOfTermsAndConditions