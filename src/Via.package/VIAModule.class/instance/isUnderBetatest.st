accessing
isUnderBetatest
	^ self isForBetatester and: [ self isReleased not ]