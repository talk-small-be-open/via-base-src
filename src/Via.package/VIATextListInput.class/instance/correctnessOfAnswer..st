as yet unclassified
correctnessOfAnswer: aCollection
	| correctCount divider |

"	correctCount := self solutions count: [:each | aCollection includes: each]."

	correctCount :=  aCollection count: [ :each | self isSolution: each ].

	divider := (self solutions size).
	
	divider isZero ifTrue: [ ^ 0 ].
	
	^(correctCount * 100) / divider