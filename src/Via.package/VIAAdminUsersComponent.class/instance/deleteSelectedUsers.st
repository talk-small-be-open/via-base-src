actions
deleteSelectedUsers
	(self confirmYesNo: ('Really delete ', self selectedUsers size asString, ' selected users?')) ifTrue: [
		self selectedUsers do: [ :each | each deleteOnWebsite: self website ].
		self flashMessage: 'Users deleted'
	]