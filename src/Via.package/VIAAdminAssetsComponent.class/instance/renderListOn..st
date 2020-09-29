rendering
renderListOn: html
	self assets ifNil: [ ^self ].

	self assets
		ifBlank: [ html paragraph: 'Nothing found' ]
		ifNotBlank: [
			html table class: 'adminAssets'; with: [
				html tableHead: [
					html tableRow: [
						html tableHeading.
						html tableHeading.
						html tableHeading: 'Title & Info'.
						html tableHeading: 'Pillar-Examples'.
						html tableHeading.
						]].
				html tableBody: [
					batcher batch do: [:each |
						html tableRow: [
							html tableData: each classDisplayName.
							html tableData: [
								self renderPreview: each on: html].
							html tableData class: 'assetName'; with: [
								html div: each title.
								html div: (GRPrinter decimalFileSize print: each byteSize).
								html div style: 'color:green'; with: (each comment).
								html div style: 'color:red'; with: (each internalComment).
							].
							html tableData with: [
								each pillarTemplateStrings do: [:eachTemplate |
									html preformatted
										class: 'pillarExample';
										selectOnClick;
										withLineBreaks: eachTemplate]
							].
							html tableData class: 'actions'; with: [
								self renderActions: each on: html.
							]]]]].
		html div
			style: 'text-align: center';
			with: batcher
		
		]