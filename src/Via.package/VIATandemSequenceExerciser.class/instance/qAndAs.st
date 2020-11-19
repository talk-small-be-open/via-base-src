accessing
qAndAs
	^ self qAndASequence collect: [ :each | taskBrick qAndAAt: each ]