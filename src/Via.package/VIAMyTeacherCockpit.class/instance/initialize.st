initialization
initialize

	super initialize.

	exams := self wd findExamsByTeacher: self currentUser.
	examModules := (exams collect: #module) asSet sortedBySortKey.
	
	moduleCardRenderer := self website moduleCardRendererClass component: self.