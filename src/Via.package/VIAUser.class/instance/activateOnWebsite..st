as yet unclassified
activateOnWebsite: aWebsite
	(self validateActivationForWebsite: aWebsite) ifTrue: [
		aWebsite data addUser: self.
		^true].

	^false