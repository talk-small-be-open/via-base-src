instance creation
parse: aString with: aParser
	| line row cell markup index changed |
	line := aString.
	row := PRTableRow new.
	[ line isEmpty ] whileFalse: [
		cell := PRTableCell new.
		line := line allButFirst: cell class markup size.
		[	changed := false.	
			#(markupLeft markupCenter markupRight markupHeading) 
				with: #(beAlignedLeft beAlignedCenter beAlignedRight beHeading) 
				do: [ :selector :align |
					markup := cell class perform: selector.
					(line beginsWithSubCollection: markup) ifTrue: [
						line := line allButFirst: markup size.
						cell perform: align.
						changed := true ] ].
			changed ] whileTrue.
		index := (PRMatcherManager findFirst: cell class markup at: 1 in: line) - 1.
		index < 1 ifTrue: [ index := line size ].
		row add: (cell addAll: (aParser parseText: (line first: index))).
		line := line allButFirst: index ].
	^ aParser combine: self with: row