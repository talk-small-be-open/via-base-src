as yet unclassified
initializeTabbedNavigationComponent

	tabbedNavigationComponent := WASimpleNavigation new.

	tabbedNavigationComponent	
		add: modulesComponent label: 'Modules';
		add: assetsComponent label: 'Assets'.
"		add: helpCenterComponent label: 'Help system';"

	self ifAdmin: [
		tabbedNavigationComponent	
			add: uiTextComponent label: 'UI Texts';
			add: classificationComponent label: 'Tagging';
			add: usersComponent label: 'Users';
			add: configurationComponent label: 'Configuration';
	"		add: emailsComponent label: 'Emails';"
			add: maintenanceComponent label: 'Maintenance'.
	"		add: developmentComponent label: 'Development';"]