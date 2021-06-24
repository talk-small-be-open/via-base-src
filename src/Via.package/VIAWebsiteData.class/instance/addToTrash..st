adding
addToTrash: aModelObject
	self trashedObjects add: (Array with: DateAndTime now with: aModelObject)
	