rendering
renderTitleOn: html
	html heading: [
		html text: model classDisplayName.
		html text: ': '.
		html text: model displayName]