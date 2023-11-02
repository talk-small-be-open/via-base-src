parsing
parseGlossaryString: aString
	| stream glossarEntries delimiter |
	"
	=== TITLE
	blabla blabla
	=== NEXT TITLE
	asdfkj ewkfj asdkjfh
	"
	
	stream := aString readStream.
	glossarEntries := OrderedCollection new.
	delimiter := self entryDelimiter.

	"Fast forward to first title"
	stream upToAll: delimiter.

	[ stream atEnd ] whileFalse: [
		| title pillarString |
		title := stream nextLine.
		pillarString := stream upToAll: delimiter.
		
		glossarEntries add: (VIAGlossaryEntry title: title description: pillarString )
	].

	^ glossarEntries