rules creation
validateUniqueEmail
	(self validateTrue: [
		| existingUser |
		existingUser := self db findUserByEmail: self object email.
		existingUser isNil or: [existingUser == self object]])

		errorMessage: #userValidator:emailIsTaken