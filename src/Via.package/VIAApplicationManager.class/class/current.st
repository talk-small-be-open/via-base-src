accessing
current
	^ Current ifNil: [Current := (self subclasses sortedBy: [ :each | each name ]) first ]