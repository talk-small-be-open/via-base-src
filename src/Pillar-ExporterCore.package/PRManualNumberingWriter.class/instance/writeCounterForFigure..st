writing
writeCounterForFigure: aFigure
	aFigure counter isValidCounter 
		ifTrue: [ 
			self writeCounter: aFigure counter.
			self writeCounterDefinitionSeparator ]