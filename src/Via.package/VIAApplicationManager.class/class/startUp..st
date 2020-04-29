as yet unclassified
startUp: isComingUp
	isComingUp ifTrue: [
		self db isDevelopment ifTrue: [
			self configureWebserver.
			self configurePaths.
			self setDevelopmentProcessEnvironment.
		].
	]