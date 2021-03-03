as yet unclassified
createDummyLogin
	| random |
	random := 9999 atRandom.
	user := VIAUser new firstName: ('Peter', random greaseString); lastName: ('Muster', random greaseString); yourself.