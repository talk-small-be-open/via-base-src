rendering
renderAllUsersOn: html
	html heading level3; with: [
		html text: 'Users'; space.
		html text: '(Total '.
		html text: self wd users size greaseString.
		html text: ')'.
	].

	self renderToolbarOn: html.

	self users ifNil: [ ^self ].

	html div
		style: 'text-align: center';
		with: batcher.

	html table: [
		html tableHead: [
			html tableRow: [
				html tableHeading: 'Name'.
				html tableHeading: 'Email'.
				html tableHeading: 'Role'.
				html tableHeading: 'Social-ID(s)'.
				html tableHeading: 'Terms'.
				html tableHeading.
			 ]
		 ].
		batcher batch do: [:each |
			html tableRow: [
				html tableData: each fullName.
				html tableData: each email.
				html tableData: each rolesLabel.
				html tableData: [
					each socialIds do: [:eachSocial |
						html text: eachSocial] separatedBy: [html break]].
				html tableData: (each termsAccepted ifTrue: [ 'Yes' ] ifFalse: [ 'No' ]).
				html tableData: [
					html anchor
						callback: [self editUser: each];
						with: 'Edit'.
					html space.
					html anchor
						callback: [self deleteUser: each];
						with: 'Delete'
					]
			]]].

	html div
		style: 'text-align: center';
		with: batcher
