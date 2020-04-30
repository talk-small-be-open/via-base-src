accessing
configuration
	^ configuration ifNil: [ configuration :=PRCocoonConfiguration new ]