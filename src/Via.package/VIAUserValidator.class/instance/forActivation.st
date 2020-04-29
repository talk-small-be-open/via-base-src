rulesets
forActivation
	self validationGroup: [
		self validatePresence
			of: #email;
			named: #email.
		self validateEmailFormat of: #email.
		self validateUniqueEmail].

"	self validatePresence of: #firstName.
	self validatePresence of: #lastName."