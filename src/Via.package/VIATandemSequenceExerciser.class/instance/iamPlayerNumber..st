actions
iamPlayerNumber: aNumber
	| zoomTitle |
	
	playerNumber := aNumber.
	
	self initializePairingComponent.
	
	zoomTitle := String streamContents: [:s |
		s << self moduleExerciser module indexCodeLabel.
		self taskExerciser task title ifNotBlank: [ :t |
			s space.
			s << t]].
	
	self zoomMyself: zoomTitle