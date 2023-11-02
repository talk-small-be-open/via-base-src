as yet unclassified
visitViaPrModuleLink: aModuleLink
	html anchor
		class: 'linkToModule';
		callback: [ self tryGotoModuleByCommandString: aModuleLink linkString ];
		with: aModuleLink alias