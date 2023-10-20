rendering
renderSearchResultOn: html
	self users ifBlank: [ ^ self ].

	html form: [

		html submitButton
			callback: [ self resetSelectedUsersTerms ];
			with: 'Reset terms of selected users'.
		html space.
		html submitButton
			callback: [ self deleteSelectedUsers ];
			with: 'Delete selected'.

		html div
			class: 'listBatcher';
			with: batcher.

"		(html clickAnchor: ((html jQuery: 'input.selectionCheckbox') attributeAt: 'checked' put: true ))
			with: 'Select all'."
		html anchor
			callback: [ self selectAllUsers ];
			with: 'Select all'.

		"VERY IMPORTANT!"
		html hiddenInput callback: [ self clearSelection ].

		html table: [
			html tableHead: [
				html tableRow: [
					html tableHeading.
					html tableHeading: 'Name'.
					html tableHeading: 'Email'.
					html tableHeading: 'Role'.
					html tableHeading: 'Social-ID(s)'.
					html tableHeading: 'Terms'.
					html tableHeading: 'Login'.
					html tableHeading.
				 ]
			 ].
			batcher batch do: [:each |
				html tableRow: [
					html tableHeading: [
						html checkbox
							class: 'selectionCheckbox';
							onTrue: [ self selectUser: each ] onFalse: [  ];
							value: (self isSelectedUser: each).
					].
					html tableData: each fullNameFormal.
					html tableData: each email.
					html tableData: each rolesLabel.
					html tableData: [
						each socialIds do: [:eachSocial |
							html text: eachSocial] separatedBy: [html break]].
					html tableData: (each termsAccepted ifTrue: [ 'Yes' ] ifFalse: [ 'No' ]).
					html tableData: [
						each loginCount = 0 ifTrue: [ html span: 'never' ] ifFalse: [
							html span: (VIAHelper germanDateAndTimeStringFor: each lastLoginAt).
							html space.
							html text: (each loginCount asString).
							html text: 'x' ]
					].
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
			class: 'listBatcher';
			with: batcher ].