as yet unclassified
renderHeaderOn: html
	html image
		url: ('/files/css/images/', self website logoFilename);
		height: 'auto';
		width: 50.

	html space.
	html anchor
		url: module permaUrl;
		target: '_blank';
		t: 'mainEmbedded:openFullscreen'.
				
	html div class: 'uk-float-right'; with: [

		self isLoggedIn ifTrue: [
			html span: self currentUser fullName.
			html space.
			html anchor
"				onClick: 'hello.logout()';" "Hm, machts das noch?"
				callback: [self logout];
				t: 'mainEmbedded:logout']]