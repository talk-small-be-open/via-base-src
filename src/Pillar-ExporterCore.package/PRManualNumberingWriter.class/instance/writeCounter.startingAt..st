helpers
writeCounter: aCounter startingAt: aNumber
	"Write on the canvas the string representation of ==aCounter== ignoring ==aNumber== - 1 elements at the begining. For example, if you don't want to see level 1 numbers, you can pass 2 as value for ==aNumber==."

	^ (aCounter elements allButFirst: aNumber - 1)
		do: [ :each | self writeCounterElement: each ]
		separatedBy: [ self writeCounterElementSeparator ]