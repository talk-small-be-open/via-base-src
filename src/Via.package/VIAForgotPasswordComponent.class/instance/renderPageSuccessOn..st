rendering
renderPageSuccessOn: html
	html paragraph t: #forgotPassword:successInfo.
"	html ukAnchorButton
		callback: [self answer];
		t: #close"