initialization
passedQAndAs
	| passedQaNumbers |

	passedQaNumbers := sequence first: (currentNumber - 1).

	^ passedQaNumbers collect: [ :each | taskBrick qAndAAt: each ]