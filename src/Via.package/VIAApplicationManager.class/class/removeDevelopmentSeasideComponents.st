removing
removeDevelopmentSeasideComponents
	"Will be called from script while deploying with ansible, and if the
	app is not beta status"

	"Remove dangerous unused seaside apps"
	WAAdmin
		unregister: 'config'; "Gefährliche App"
		unregister: 'browse';
		unregister: 'comet';
		unregister: 'examples';
		unregister: 'seaside';
		unregister: 'welcome';
		unregister: 'tools'.
