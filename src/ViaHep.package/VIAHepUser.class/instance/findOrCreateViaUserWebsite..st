as yet unclassified
findOrCreateViaUserWebsite: aWebsite
	| viaUser |
	
	viaUser := aWebsite data findOrCreateUserBySocialId: self viaSocialId email: email.

	"hard sync name always"
	viaUser
		firstName: firstName;
		lastName: lastName.
		
	^ viaUser