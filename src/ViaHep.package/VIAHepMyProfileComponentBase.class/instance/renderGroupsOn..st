rendering
renderGroupsOn: html
	userGroups ifNotBlank: [
		html heading level3; t: 'myProfile:myGroups'.

		html ukFormStacked: [
			html ukTable class: 'uk-table-small uk-table-divider uk-margin'; with: [
				html tableRow: [ 
					html tableHeading.
					html tableHeading: 'Lehrperson Einsicht?' ].
				userGroups do: [ :each |
					| membership |
					membership := each studentMembershipOf: user.
					html tableRow: [ 
						html tableData: each displayName.
						html tableData: [ 
							html ukCheckbox on: #teacherCanView of: membership.
						].
					
					].
				].
			].

			html div class: 'uk-margin-top'; with: [
				html submitButton
					t: 'form:save'
			].
		]
	].




	html div class: 'uk-margin'; with: [
		self ifNotTeacher: [
			html anchor
				callback: [ self enterInvitationCode ];
				t: 'myProfile:enterInvitationCode'.
"			html break.
			html anchor
				callback: [ self registerAsTeacher ];
				t: 'myProfile:registerAsTeacher'."
		].
	]