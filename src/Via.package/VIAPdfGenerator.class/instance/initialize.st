as yet unclassified
initialize
	super initialize.
	binPath := '/usr/local/bin/'.
	
	self ifDevelopment: [
		binPath := '/usr/local/bin/'].
