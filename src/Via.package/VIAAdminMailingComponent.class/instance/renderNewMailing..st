rendering
renderNewMailing: html
	self renderPillarPreviewDialogOn: html.
	
	html form: [
		html heading level3; with: 'Channel'.
		html select
			list: #(official systemStatus);
			on: #channelName of: mailing.

		html label: [
			html checkbox on: #ignoreSettings of: mailing.
			html space.
			html text: 'IMPORTANT (ignore personal settings)'].

		html heading level3; with: 'Recipients'.
		html multiSelect
			list: VIAUser allRoles;
			on: #toRoles of: mailing.

		html div: [ html text: 'Total: '. html text: mailing recipients size asString ].			

		html heading level3; with: 'Subject'.
		html textInput on: #subject of: mailing.
		
		html heading level3; with: 'Message'.

		self renderPillarObjectInput: mailing messagePillar on: html.

		html div: [ 			
			html submitButton
				callback: [ "self save" ];
				with: 'Save'.
			html space.
			html submitButton
				callback: [ self sendTestToMe ];
				with: 'Send test to myself'.
			html space.
			html submitButton
				callback: [ self send ];
				with: 'Send to all'.
			html space.
			html submitButton
				callback: [ self downloadRecipients ];
				with: 'Download recipients'.
		]
	].