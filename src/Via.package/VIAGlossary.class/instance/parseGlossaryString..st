parsing
parseGlossaryString: aString
	| stream glossarEntries delimiter |
	"
	=== TITLE
	optional left formatted Title
	---
	blabla blabla
	=== NEXT TITLE
	asdfkj ewkfj asdkjfh
	"
	
	stream := aString readStream.
	glossarEntries := OrderedCollection new.
	delimiter := self entryDelimiter.

	"Fast forward to first title. Use grease for GemStone compat!"
	stream greaseUpToAll: delimiter.



	[ stream atEnd ] whileFalse: [
		| title syntaxPillarString descriptionPillarString lines lineGroups |
		title := stream nextLine.

		lines := (stream greaseUpToAll: delimiter) lines collect: [ :each | each trimBoth ].

		lines ifNotEmpty: [
			lineGroups := MCLPlatform splitCollection: lines delimiter: self contentDelimiter.
			
			lineGroups size = 1 ifTrue: [
				syntaxPillarString := nil.
				descriptionPillarString := MCLPlatform joinCollection: lineGroups first delimiter: String lf.
			].
			lineGroups size = 2 ifTrue: [ 
				syntaxPillarString := MCLPlatform joinCollection: lineGroups first delimiter: String lf.
				descriptionPillarString := MCLPlatform joinCollection: lineGroups second delimiter: String lf.
		] ].
			
		glossarEntries add: (VIAGlossaryEntry title: title syntax: syntaxPillarString description: descriptionPillarString )
	].

	^ glossarEntries