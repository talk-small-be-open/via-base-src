rendering
renderContentOn: html

	html heading with: [
		html text: 'Users'; space.
		html text: '(Total '.
		html text: self wd users size greaseString.
		html text: ')'.
	].

	html div class: 'bothBuffer'; with: [
		html skAnchorButton
			callback: [self createUser];
			with: '+ Create user'.
		html space.
		html skAnchorButton
			callback: [self createTestingUsers];
			with: 'Create testing users ...'.
		html space.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'.
		html space.
		html skAnchorButton
			callback: [ self clear ];
			with: 'Clear'

	].


	self renderSearchOn: html.

	self renderSearchResultOn: html.
