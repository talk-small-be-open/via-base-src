initialization
initialize

	super initialize.
	moduleCardRenderer := self website moduleCardRendererClass component: self.

	certificate := (VIACertificateComponent new)
		user: self currentUser;
		moduleExercises: self currentPortfolio doneModuleExercises;
		yourself.
	
	self addContainerDiv.
	self addUkContainer.