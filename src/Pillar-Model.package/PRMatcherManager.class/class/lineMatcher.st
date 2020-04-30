accessing
lineMatcher
	^ LineMatcher ifNil: [ LineMatcher := self buildLineMatcher ]