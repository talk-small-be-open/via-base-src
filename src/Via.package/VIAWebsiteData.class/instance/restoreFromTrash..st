adding
restoreFromTrash: aModelObject
	| untrasher success |
	untrasher := VIAUntrashObjectVisitor new.
	untrasher websiteData: self.
	success := (aModelObject acceptVisitor: untrasher) = true.
	success ifTrue: [ self removeFromTrash: aModelObject ]
