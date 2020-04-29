as yet unclassified
renderOverviewOn: html
	html heading level4; t: 'moduleAssets:fileOverview'.
	model assetFiles do: [:each |
		html div: [
			html text: each title.
			html space.
			html text: (GRPrinter decimalFileSize print: each byteSize)
		]
	]