as yet unclassified
createStudentsGroup
	(self request: 'teacherCockpit:titleOfGroupQM') ifNotBlank: [ :t |
		| group |
		group := VIAStudentsGroup new
			title: t;
			addTeacher: self teacher;
			yourself.
			
		self wd addUserGroup: group.
		self refresh.
		self editGroup: group.
	]