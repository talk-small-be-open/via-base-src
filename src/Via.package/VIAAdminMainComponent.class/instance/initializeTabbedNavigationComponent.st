as yet unclassified
initializeTabbedNavigationComponent

	tabbedNavigationComponent := WASimpleNavigation new.

	self ifRoles: #(admin editor) then: [
		modulesComponent := VIAAdminModulesComponent new.
		assetsComponent := VIAAdminAssetsComponent new.

		tabbedNavigationComponent	
			add: modulesComponent label: 'Modules';
			add: assetsComponent label: 'Assets'.
	"		add: helpCenterComponent label: 'Help system';"].

	self ifRoles: #(admin supporter) then: [
		usersComponent := VIAAdminUsersComponent new.
	
		tabbedNavigationComponent 
			add: usersComponent label: 'Users' ].
			
	self ifAdmin: [

		uiTextComponent := VIAAdminUiTextComponent new.
		configurationComponent := VIAAdminConfigurationComponent new.
		classificationComponent := VIAAdminClassificationComponent new.
		mailingComponent := VIAAdminMailingComponent new.
		maintenanceComponent := VIAAdminMaintenanceComponent new.

		tabbedNavigationComponent	
			add: uiTextComponent label: 'UI Texts';
			add: classificationComponent label: 'Tagging';
			add: configurationComponent label: 'Configuration';
	"		add: emailsComponent label: 'Emails';"
			add: mailingComponent label: 'Mailing';
			add: maintenanceComponent label: 'Maintenance'.
	"		add: developmentComponent label: 'Development';"].
		
	self ifRoles: #(admin supporter) then: [
		statusComponent := VIAAdminStatusComponent new.
		supportComponent := VIAAdminSupportComponent new.

		tabbedNavigationComponent add: supportComponent label: 'Support'.
		tabbedNavigationComponent add: statusComponent label: 'Status'
	].