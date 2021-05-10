as yet unclassified
createSequence: aNumbersCollection
	"Creates the final game pages sequence, taking the sequence of Q&A pages as a start"
	
	sequence := aNumbersCollection copy asOrderedCollection.
	
	"Add game relevant steps into the sequence. Remark: Add from end to beginning, easier for index numbers"
	sequence
"		add: #step2Instruction beforeIndex: 2;"
		add: #start beforeIndex: 1;
		add: #pairing afterIndex: 1;
		addLast: #summary.
		
	firstGameIndex := 3