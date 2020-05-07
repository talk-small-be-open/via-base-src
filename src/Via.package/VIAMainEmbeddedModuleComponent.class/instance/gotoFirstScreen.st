as yet unclassified
gotoFirstScreen
	
	"Modul von URL anpeilen?"
	self session gotoModule ifNotNil: [:m |
		module := m.
		self session clearGotoModule.
		self restart.
		^self].
	
	super gotoFirstScreen