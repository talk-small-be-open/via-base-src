as yet unclassified
visitPrModuleLink: aModuleLink
	html anchor
		class: 'linkToModule';
		callback: [ self tryGotoModuleByIndexCode: aModuleLink indexCodeString ];
		with: aModuleLink alias