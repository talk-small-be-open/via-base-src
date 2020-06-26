as yet unclassified
deleteUserGroup: aUserGroup
"	self db addToTrash: aUserGroup."
	self removeUserGroup: aUserGroup.
	aUserGroup afterDeletion