instance creation
parse: aString with: aParser
	| line nextLine row cell markup index cutIndex changed nextCellMarkup withSpace |
	line := aString.
	row := PRTableRow new.
	
	"We detect, if we want spaced around the table markup bars, to avoid collission with pillar from inside a cell"
	withSpace := ((line at: 2 ifAbsent: [ nil ]) = Character space) or: [ ((line at: 3 ifAbsent: [ nil ]) = Character space) ].

	"Table markup needs to have spaces around, since it will get confused else with o"
	nextCellMarkup := withSpace ifTrue: [ ' ', PRTableCell markup ] ifFalse: [ PRTableCell markup ].
	
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
		index := (PRMatcherManager findFirst: nextCellMarkup at: 1 in: line).

		cutIndex := index - ( withSpace ifTrue: [ 0 ] ifFalse: [ 1 ] ).
		
		index < 1
			ifTrue: [ cutIndex := line size. nextLine := '' ]
			ifFalse: [ nextLine := line allButFirst: cutIndex ].

		row add: (cell addAll: (aParser parseText: (line first: cutIndex) trimBoth )).

		line := nextLine
		
	].
	^ aParser combine: self with: row