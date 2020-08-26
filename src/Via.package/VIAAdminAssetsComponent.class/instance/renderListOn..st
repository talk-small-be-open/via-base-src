rendering
renderListOn: html
	self assets ifNil: [ ^self ].
	self assets
		ifBlank: [ html paragraph: 'Nothing found' ]
		ifNotBlank: [:collection |
			html table class: 'adminAssets'; with: [
				html tableHead: [
					html tableRow: [
						html tableHeading.
						html tableHeading.
						html tableHeading: 'Title & Info'.
						html tableHeading: 'Pillar-Examples'.
						html tableHeading.
						html tableHeading.
						]].
				html tableBody: [
					collection reverseDo: [:each |
						html tableRow: [
							html tableData: each classDisplayName.
							html tableData: [
								(html lazyImage: each previewImageUrl)
									style: 'max-width:100px;max-height:100px'].
							html tableData class: 'assetName'; with: [
								html div: each title.
								html div: (GRPrinter decimalFileSize print: each byteSize)].
							html tableData with: [
								each pillarTemplateStrings do: [:eachTemplate |
									html preformatted
										class: 'pillarExample';
										selectOnClick;
										withLineBreaks: eachTemplate] separatedBy: [html span: 'or:']
							].
							html tableData: [
								html anchor
									target: '_blank';
									url: each location;
									with: 'Open URL ...'].
							html tableData: [
								html anchor
									callback: [self editAsset: each];
									with: 'Edit'.
								html space.
								html anchor
									callback: [self deleteAsset: each];
									with: 'Delete'.
								html space.
								html anchor
									callback: [self showUsingModules: each];
									with: 'Where?'.
									
								]]]]]]