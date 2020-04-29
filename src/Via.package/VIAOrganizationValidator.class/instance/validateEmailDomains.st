rules creation
validateEmailDomains
	| validationBlock |
	validationBlock := [
		| config |
		config := self object configuration.
		config hasLocalEmailDomains
			ifFalse: [true]
			ifTrue: [
				| locals |
				locals := config localEmailDomains.

				self isValidEmailDomains: locals ofOrganization: self object]].

	(self validateTrue: validationBlock)
		errorMessage: #organizationValidator:emailDomainsMustBeSubdomainsOfParent