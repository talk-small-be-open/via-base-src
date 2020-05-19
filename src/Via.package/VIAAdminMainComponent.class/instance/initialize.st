as yet unclassified
initialize
	super initialize.

	flashMessages := OrderedCollection new.

	uiTextComponent := VIAAdminUiTextComponent new.
	usersComponent := VIAAdminUsersComponent new.
	modulesComponent := VIAAdminModulesComponent new.
	configurationComponent := VIAAdminConfigurationComponent new.
	classificationComponent := VIAAdminClassificationComponent new.
	maintenanceComponent := VIAAdminMaintenanceComponent new.
"	developmentComponent := SIRAdminDevelopmentComponent new.
"
	assetsComponent := VIAAdminAssetsComponent new.

	self beKeepaliveSession.
	
	self initializeTabbedNavigationComponent