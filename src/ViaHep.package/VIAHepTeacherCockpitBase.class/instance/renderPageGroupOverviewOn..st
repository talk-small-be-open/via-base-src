rendering
renderPageGroupOverviewOn: html
	| isPristine |

	html ukContainer: [
		html heading level1; t: 'teacherCockpit:title'.
		
		self renderBackButton: 'teacherCockpit:backToOverview' callback: [ self gotoStart ] on: html.

		isPristine := (self hasInvitationCommand not and: [selectedGroup users isEmpty]).
		
		html heading level2; with: [
			html span: selectedGroup displayName.
			html anchor
				callback: [ self editGroupName ];
				with: [ html iconEdit ]
		].

		isPristine ifTrue: [
			html div class: 'uk-margin'; pT: 'teacherCockpit:noStudents'
		].

		self renderInvitationCodeOn: html.

		isPristine ifFalse: [
			html heading level3; t: 'teacherCockpit:students'.
				html div class: 'uk-margin'; with: [ 
					html ukButtonGroup: [ 
"						html anchorButton
							callback: [ self gotoPageGroupModules ];
							sT: 'teacherCockpit:gotoPageGroupModules'."
						html anchorButton
							callback: [  ];
							with: [
								html iconRefresh.
								html sT: 'teacherCockpit:refreshStudentList' ].
					]
				].


				selectedGroup isEmpty ifTrue: [ html ukLabel sT: 'teacherCockpit:noStudents' ] ifFalse: [
					html ukTable class: 'uk-table-small uk-table-divider'; with: [
						html tableRow: [
							html tableHeading.
							html tableHeading sT: 'teacherCockpit:teacherCanView'.
							html tableHeading sT: 'teacherCockpit:delete' ].
						selectedGroup studentsAndMembershipsDo: [ :student :membership |
							html tableRow: [
								html tableData: student displayName.
								html tableData: [ (membership teacherCanView ifTrue: [ html iconCheck ] ifFalse: [ html mdash ]) ].
								html tableData: [ 
									html anchor
										callback: [ self removeStudent: student ];
										with: [ html iconDelete ].
								].
							]
						]]
				].
		].
	
	
	]