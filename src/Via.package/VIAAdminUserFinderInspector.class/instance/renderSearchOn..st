rendering
renderSearchOn: html
	html form: [
		html textInput on: #searchString of: self.
		html space.
		html select
			list: VIAUser allRoles;
			on: #role of: self.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html space.
"		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'"	].
