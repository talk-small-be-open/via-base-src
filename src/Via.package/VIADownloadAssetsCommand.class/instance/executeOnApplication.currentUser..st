as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	"show the download page"
	anApplicationComponent gotoAssetsDownloadOfModule: module