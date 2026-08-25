as yet unclassified
initializeTabbedNavigationComponent

	tabbedNavigationComponent := VIAAdminTabNavigation new.

	self ifRoles: #(admin editor) then: [

		tabbedNavigationComponent	
			add: [ VIAAdminModulesComponent new ] label: 'Modules';
			add: [ VIAAdminExpertAssetsComponent new ] label: 'Assets'.
	"		add: helpCenterComponent label: 'Help system';"].

	self ifRoles: #(admin supporter) then: [
	
		tabbedNavigationComponent 
			add: [ VIAAdminUsersComponent new ] label: 'Users' ].
			
	self ifAdmin: [

		tabbedNavigationComponent	
			add: [ VIAAdminUiTextComponent new. ] label: 'UI Texts';
			add: [ VIAAdminClassificationComponent new ] label: 'Tagging';
			add: [ VIAAdminConfigurationComponent new ] label: 'Configuration';
	"		add: emailsComponent label: 'Emails';"
			add: [ VIAAdminMailingComponent new ] label: 'Mailing';
			add: [ VIAAdminMaintenanceComponent new ] label: 'Maintenance';
			add: [ VIAAdminTrashComponent new ] label: 'Trash'.
	"		add: developmentComponent label: 'Development';"].
		
	self ifRoles: #(admin supporter) then: [
		tabbedNavigationComponent add: [ VIAAdminSupportComponent new ] label: 'Support'.
		tabbedNavigationComponent add: [ VIAAdminStatusComponent new ] label: 'Status'
	].

	self am siteAdminClass ifNotNil: [ :class |
		tabbedNavigationComponent add: [ class new ] label: self website title ]