adding
removeFromTrash: aModelObject
	"Remove the entry, without any further actions"
	trashedObjects removeAllSuchThat: [ :each | each second == aModelObject ]
	