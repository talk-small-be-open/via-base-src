as yet unclassified
renderContentOn: html
	html anchor
		callback: [self sendTestEmail];
		with: 'Send test email'.
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
		with: 'Test captcha ...'