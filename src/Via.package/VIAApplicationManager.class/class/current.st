accessing
current
	^ (self subclasses sortedBy: [ :each | each name ]) first