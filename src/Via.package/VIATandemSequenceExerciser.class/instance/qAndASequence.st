initialization
qAndASequence
	"Answers the sequence of the numbered Q&As"
	^ sequence select: [ :each | each isInteger ]