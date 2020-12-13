rendering
renderNewMailing: html
	html heading level1; with: 'Mailing'.
	self renderPillarPreviewDialogOn: html.
	
	html form: [
"		aVideoPlayer transcriptionPillar isParseOk ifFalse: [
			self renderPillarSyntaxError: aVideoPlayer transcriptionPillar parseError on: html
		]."
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

		self renderPillarInput: #pillarString of: mailing messagePillar on: html.
		

		html div: [ 			
			html submitButton
				callback: [ "self save" ];
				with: 'Save'.
			html submitButton
				callback: [ self send ];
				with: 'Send'.]
	].