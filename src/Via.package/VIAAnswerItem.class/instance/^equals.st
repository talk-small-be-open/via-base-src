comparing
= anotherObject
	^ (self species = anotherObject species) and: [ self equalityArray = anotherObject equalityArray ]