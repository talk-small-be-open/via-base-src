via
printThisButton: aJquerySelector
	(self clickButton: '$("', aJquerySelector, '").printThis()')
		class: 'printThis';
		with: [
			self iconPrint; space.
			self t: '321via:printThis']