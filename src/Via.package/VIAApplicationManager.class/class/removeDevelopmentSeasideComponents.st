removing
removeDevelopmentSeasideComponents

	"Unnötige Apps entfernen"
	WAAdmin
		unregister: 'config'; "Gefährliche App"
		unregister: 'browse';
		unregister: 'comet';
		unregister: 'examples';
		unregister: 'seaside';
		unregister: 'welcome';
		unregister: 'tools'.
