accessing
qAndAs
	^ self qAndASequence collect: [ :each | self qAndAAt: each ]