adding
removeFromTrash: aModelObject
	"Remove the entry, without any further actions"
	self trashedObjects removeAllSuchThat: [ :each | each second == aModelObject ]
	