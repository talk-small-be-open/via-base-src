rendering
renderAdminFrontendToolsOn: html
	self ifAdmin: [
		html div class: 'frontendAdminTools'; with: [
			html anchor
				title: 'ADMIN: show UI texts';
				callback: [self toggleAdminEditUiTextsMode];
				with: 'txt'.
				html space.
			html anchor
				title: 'ADMIN: switch to user';
				callback: [self switchToUser];
				with: 'su'.
				html space.
			self session hasBackgroundAdminUser ifTrue: [
				html anchor
					title: 'ADMIN: back to admin';
					callback: [self switchBackToAdmin];
					with: 'bck'.
				html space.
			].
			self isLoggedIn ifTrue: [
				html anchor
					title: 'ADMIN: logout stay in background';
					callback: [self switchToLogout];
					with: 'lo'.
			] ifFalse: [ 
				html anchor
					title: 'ADMIN: logout completely';
					callback: [self session clearBackgroundAdminUser];
					with: 'lo'.
			]].
		adminTool ifNotNil: [
			html div class: 'frontendAdminTool'; with: [
				html div class: 'title'; with: [
					html fasIcon: 'thumbtack'; space.
					html text: 'FRONTEND ADMIN TOOL'].
				html div class: 'tool'; with: adminTool] ] ].