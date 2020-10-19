initialization
initialize

	super initialize.

	"Wegen Problemen beim PDF generieren, Form-Tag braucht sonst eine Seaside Session"
"	self removeAllFormDecorations."
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model].
	
	self addContainerDiv.
	
	self buildComponents