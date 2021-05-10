as yet unclassified
zoomMyself: aTitleString
	self isZoomed ifFalse: [
		self moduleExerciser ifNotNil: [ :me |
			zoomed := true.
			self addZoomBox: aTitleString.
			self addDivClass: 'exercise'.
			me show: self ]]