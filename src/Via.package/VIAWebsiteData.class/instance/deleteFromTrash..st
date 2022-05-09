adding
deleteFromTrash: aModelObject
	"delete really, no way to restore after that"
	aModelObject afterDeletionFromTrash.
	self removeFromTrash: aModelObject
