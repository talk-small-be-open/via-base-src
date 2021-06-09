accessing
taskAt: anInteger
	^ self tasks at: anInteger ifAbsent: [ nil ]