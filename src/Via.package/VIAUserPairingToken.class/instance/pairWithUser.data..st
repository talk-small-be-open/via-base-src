as yet unclassified
pairWithUser: aUser data: anObject
	pairedUser := aUser.
	pairedData := anObject.

	"Keep alive for potential reuse in a shortterm upcoming new pairing usage"
	self prolong: 5 minutes