as yet unclassified
visitPrModuleLink: aModuleLink
	html anchor
		class: 'linkToModule';
		with: [
			html text: aModuleLink alias.
			html space.
			html text: '('.
			html text: aModuleLink linkString.
			html text: ')'.
		]