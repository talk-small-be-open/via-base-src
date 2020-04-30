writing
writeCounterForScript: aScript
	aScript counter isValidCounter 
		ifTrue: [ 
			self writeCounter: aScript counter.
			self writeCounterDefinitionSeparator ]