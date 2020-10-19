as yet unclassified
initialize
	super initialize.

	"Ubuntu"
	binPath := '/usr/bin/'.
	
	self ifDevelopment: [
		binPath := '/usr/local/bin/'].