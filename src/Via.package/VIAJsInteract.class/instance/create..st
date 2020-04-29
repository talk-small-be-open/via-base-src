as yet unclassified
create: anInteractionClass
	^ (anInteractionClass context: self renderContext)
		setInteract: self;
		rendererClass: self rendererClass;
		yourself