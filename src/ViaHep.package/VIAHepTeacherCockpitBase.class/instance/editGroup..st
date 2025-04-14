actions
editGroup: aGroup

	(studentsGroups includes: aGroup) ifFalse: [ ^ self ].
	
	self selectedGroup: aGroup.
	
	self gotoPageGroupOverview