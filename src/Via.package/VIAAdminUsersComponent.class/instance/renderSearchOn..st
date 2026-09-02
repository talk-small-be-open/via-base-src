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
			html checkbox on: #searchRolesMatchExact of: self.
			html span: ' exact roles' ].
		html space.
		html label: [
			html checkbox on: #searchRolesMatchAll of: self.
			html span: ' AND roles' ].
		html space: 3.
		html span: 'Filter: '.
		html select
			list: #(
				#'no-social-id'
				#'invalid-external-user'
				#'never-logged-in'
				#'login-count-below-10'
				#'login-count-above-100'
				#'last-login-older-180days'
				#'last-login-older-365days'
				#'last-exercise-activity-older-180days'
				#'last-exercise-activity-older-365days'
			);
			beOptional;
			on: #searchSmartFilter of: self.
		
		html space.
		html submitButton callback: [self performSearch]; with: 'Search'.
	].

