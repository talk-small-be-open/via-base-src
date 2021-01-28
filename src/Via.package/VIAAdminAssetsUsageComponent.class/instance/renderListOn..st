rendering
renderListOn: html
	html table class: 'adminAssets'; with: [
"		html tableHead: [
			html tableRow: [
				html tableHeading.
				html tableHeading.
				html tableHeading: 'Title & Info'.
				html tableHeading.
			]]."
		html tableBody: [
			modules do: [ :eachModule |
				| assets |
				assets := assetsPerModule at: eachModule.

				html tableRow: [html tableData colSpan: 4; with: [
					html heading class: 'topBuffer'; level: 3; with: eachModule displayName]].
				assets ifEmpty: [
					html tableRow: [
						html tableData colSpan: 4; with: 'None' ]]
				ifNotEmpty: [
					assets do: [ :each |
						html tableRow: [
							html tableData: each classDisplayName.
							html tableData class: 'preview'; with: [
								self renderPreview: each on: html].
							html tableData class: 'assetInfo'; with: [
								self renderInfo: each on: html.
								"Additional stuff per asset type"
								each acceptRenderingVisitor: self on: html
							].
							html tableData class: 'actions'; with: [
								self renderActions: each on: html.
							]]]]].
		]]