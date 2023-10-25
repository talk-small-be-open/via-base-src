rendering
renderSearchOn: html

	html form class: 'searchForm'; with: [
		html span: 'Text: '.
		html textInput on: #searchString of: self.
		html space.
		html span: 'Roles: '.
		html multiSelect
			list: VIAUser allRoles;
			size: VIAUser allRoles size;
			on: #searchRoles of: self.
		html space.
		html label: [
			html checkbox on: #searchRolesMatchAll of: self.
			html span: ' combined roles' ].
		html space: 3.
		html span: 'Filter: '.
		html select
			list: #(#'no-social-id' #'invalid-external-user' #'never-logged-in');
			beOptional;
			on: #searchSmartFilter of: self.
		
		html space.
		html submitButton callback: [self performSearch]; with: 'Search'.
	].

