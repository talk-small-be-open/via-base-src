initialization
initialize
	super initialize.
	
	stream := String new writeStream.
	indentation := 0.
	isAtLineStart := true