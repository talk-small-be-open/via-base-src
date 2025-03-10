actions
deleteGroup: aGroup
	(self confirmYesNo: 'teacherCockpit:deleteStudentsGroupQM') ifTrue: [
		self wd deleteUserGroup: aGroup.
		self refresh]