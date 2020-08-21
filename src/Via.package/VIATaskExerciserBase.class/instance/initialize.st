initialization
initialize
	super initialize.
	
	"pre-flight rendering phase, to lazy init stuff if needed
	OPTIMIZE: Maybe dont do that with the rendering methods, but with a separate visitor."
	