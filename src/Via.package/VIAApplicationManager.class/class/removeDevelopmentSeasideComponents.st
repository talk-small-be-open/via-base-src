removing
removeDevelopmentSeasideComponents
	"Will be called from script while deploying with ansible"

	"Remove dangerous unused seaside apps"
	WAAdmin
		unregister: 'config'; "Gefährliche App"
		unregister: 'browse';
		unregister: 'comet';
		unregister: 'examples';
		unregister: 'seaside';
		unregister: 'welcome';
		unregister: 'tools'.

	"Do NOT *list* the /files index, but keep the handler"
	WAFileHandler default 
		preferenceAt: #fileHandlerListingClass
		put: WAForbiddenFileHandlerListing.