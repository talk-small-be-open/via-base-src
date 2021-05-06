as yet unclassified
pairWithUser: aUser data: anObject
	pairedUser := aUser.
	pairedData := anObject.

	"Keep alive for potential reuse in a upcoming new pairing usage"
	self prolong: 10 minutes