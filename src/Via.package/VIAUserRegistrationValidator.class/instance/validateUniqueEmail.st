rules creation
validateUniqueEmail
	(self validateTrue: [(self db isExistingUserWithEmail: self object email) not])
		errorMessage: #userRegistrationValidator:emailIsTaken