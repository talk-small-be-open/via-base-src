adding
removeFromTrash: aModelObject
	self trashedObjects removeAllSuchThat: [ :each | each second == aModelObject ]
	