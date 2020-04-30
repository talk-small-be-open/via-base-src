comparing
= anObject
	^ self species = anObject species
		and: [ self parent = anObject parent and: [ self numbering = anObject numbering and: [ self size = anObject size ] ] ]