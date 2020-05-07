rendering
renderInfoMenuOn: html
	html listItem with: [
		html anchor with: [
			html span t: 'menu:info'.
			html span class: 'menuDivider'.
		].
		html div class: 'uk-navbar-dropdown'; with: [
			html unorderedList class: 'uk-nav uk-navbar-dropdown-nav'; with: [
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:about'];
						t: 'menu:info:about'.
				].
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:credits'];
						t: 'menu:info:credits'.
				].
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:pressReview'];
						t: 'menu:info:pressReview'.
				].
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:faqStudent'];
						t: 'menu:info:faqStudent'.
				].
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:faqTeacher'];
						t: 'menu:info:faqTeacher'.
				].
				html listItem: [
					html anchor
						callback: [self showText: '321via:info:contact'];
						t: 'menu:info:contact'.
				].

	]]]