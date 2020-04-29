as yet unclassified
run: anExam
	exam := anExam.

	anExam module tasks do: [:each |
		each acceptVisitor: self
	].

	^analyzationData