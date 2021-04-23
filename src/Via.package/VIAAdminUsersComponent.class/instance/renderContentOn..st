rendering
renderContentOn: html
	html div class: 'bottomBuffer'; with: [
		html skAnchorButton
			callback: [self createUser];
			with: '+ Create user'.
		html space.
		html skAnchorButton
			callback: [self createTestingUsers];
			with: 'Create testing users ...'].

	self renderAllUsersOn: html.
			
	self renderAdminsOn: html.
	self renderSupportersOn: html.
	self renderEditorsOn: html.
	self renderTeachersOn: html.
	self renderBetatestersOn: html.
	
