rendering
renderListOn: html
	self assets ifNil: [
		html paragraph: 'Use filter to show assets'.
		^self ].

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
							html tableData class: 'assetInfo'; with: [
								self renderInfo: each on: html.
								"Additional stuff per asset type"
								each acceptRenderingVisitor: self on: html
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