rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	html div
		class: 'taskBrickGroupToggler';
		with: [
			html text: '('.
			html text: aTaskBrickGroup title.
			html text: ': '.
			html t: 'exerciserSchoolPrint:seeAtEndOfTask'.
			html text: ')'.
		].

	self registerTaskBrickGroup: aTaskBrickGroup.