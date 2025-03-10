testing
canTeacherView: aUser
	^ (selectedGroup studentMembershipOf: aUser) teacherCanView.