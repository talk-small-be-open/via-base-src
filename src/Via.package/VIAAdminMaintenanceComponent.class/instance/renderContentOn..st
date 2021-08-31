as yet unclassified
renderContentOn: html
	html anchor
		callback: [self sendTestEmail];
		with: 'Send test email'.
	html break.
	html anchor
		callback: [self sendTestSysadminEmail];
		with: 'Send test sysadmin email'.
	html break.
	html anchor
		callback: [self sendTestHtmlEmail];
		with: 'Send test HTML email'.
	html break.
	html anchor
		callback: [self sendTestPillarEmail];
		with: 'Send test Pillar email (Text & HTML)'.
	html break.
	html anchor
		callback: [self showFlash];
		with: 'Show flash message'.
	html break.
	html anchor
		url: '/lib/embed_test.html';
		target: '_blank';
		with: 'Open Embed-Previewer ...'.
	html break.
	html anchor
		callback: [ self testCaptcha ];
		with: 'Test captcha ...'.
	html break.
	html anchor
		callback: [ self testPeer2Peer ];
		with: 'Test P2P ...'.
	html break.
	html anchor
		callback: [ self testUserPairA ];
		with: 'Test Pairing A ...'.
	html break.
	html anchor
		callback: [ self testUserPairB ];
		with: 'Test Pairing B ...'.