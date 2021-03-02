adding
addTeacher
	| inspector |
	inspector := VIAAdminUserFinderInspector new.
	self next: inspector onAnswer: [ :teacher |
		teacher ifNotNil: [ model addTeacher: teacher ] ]