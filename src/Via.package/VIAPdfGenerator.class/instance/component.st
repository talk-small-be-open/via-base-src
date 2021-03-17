accessing
component
	^ component ifNil: [ component := componentCreator value ]