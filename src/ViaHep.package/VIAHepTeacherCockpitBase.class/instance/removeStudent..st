actions
removeStudent: aStudent
	(self confirmYesNo: 'teacherCockpit:removeStudentFromGroupQM') ifTrue: [
		selectedGroup removeUser: aStudent.
		self refresh]