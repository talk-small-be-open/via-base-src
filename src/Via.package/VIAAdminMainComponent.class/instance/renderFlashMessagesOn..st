rendering
renderFlashMessagesOn: html
	flashMessages ifNotEmpty: [
		html div class: 'flashMessages'; with: [
			html div class: 'uk-alert uk-alert-success'; with: [
				flashMessages do: [:each |
					html div: [
						html iconFlashMessage; space.
						html text: each]]]].

		self clearFlashMessages]