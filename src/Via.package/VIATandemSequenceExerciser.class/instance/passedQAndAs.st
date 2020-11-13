initialization
passedQAndAs
	| passedQaNumbers |

	passedQaNumbers := self qAndASequence first: (currentQAndACounter - 1).

	^ passedQaNumbers collect: [ :each | taskBrick qAndAAt: each ]