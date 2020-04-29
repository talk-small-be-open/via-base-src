as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	"show the exam"
	anApplicationComponent gotoAssetsDownloadOfModule: module