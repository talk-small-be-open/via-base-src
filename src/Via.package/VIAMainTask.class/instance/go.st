as yet unclassified
go
	[self isCommandGiven
		ifTrue: [
			(command isExecutable not)
				ifTrue: [
					self commandExpired.
					self clearCommand]
				ifFalse: [
					command isLogoutRequired ifTrue: [
						"We start the public interface, since the command might operate on that. Never log in here."
						"self callPublicApplication"
						self logoutUser].

					command isLoginRequired ifTrue: [
						command hasUser
							ifTrue: [command isAutologin
								ifTrue: [self directLoginUser: command user]
								ifFalse: [self verifyLoginUser: command user]]
							ifFalse: [self ensureLoginUser]]]].

	"Call the main application, either logged in or not, smart."
	self callApplication]
		on: VIAError
		do: [:error |
			self clearCommand.
			self ifDevelopment: [error pass].
			self displayMessageAndCallPublicApplication: error messageText]