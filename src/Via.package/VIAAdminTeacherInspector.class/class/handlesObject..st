error handling
handlesObject: anObject
	^ (anObject isKindOf: VIAUser) and: [ anObject isTeacher ]