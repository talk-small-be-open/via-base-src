as yet unclassified
executeCommand
	command ifNotNil: [
		[
		command executeOnApplication: applicationComponent currentUser: self currentUser
		] ensure: [self clearCommand]
	]