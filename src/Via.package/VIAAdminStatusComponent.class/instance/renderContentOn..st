rendering
renderContentOn: html
	html heading: 'Status'.
	html table: [ 
		html tableRow: [ 
			html tableData: 'Demo app hits'.
			html tableData: [
				html text: demoAppCounter value asString ].
			html tableData: [
				html anchor
					callback: [ demoAppCounter decrementBy: demoAppCounter value ];
					with: 'Clear'
			] ].
		html tableRow: [ 
			html tableData: 'Number of assets'.
			html tableData: [
				html text: self wd assets size asString ].
			html tableData: [
			] ].
		html tableRow: [ 
			html tableData: 'Number of modules'.
			html tableData: [
				html text: self wd modules size asString ].
			html tableData: [
			] ].
		html tableRow: [ 
			html tableData: 'Number of users'.
			html tableData: [
				html text: self wd users size asString ].
			html tableData: [
			] ].
		html tableRow: [ 
			html tableData: 'Number of current frontend sessions'.
			html tableData: [
				html text: (WAAdmin defaultDispatcher handlerAt: 'app') sessions size asString].
			html tableData: [
			] ].
		html tableRow: [ 
			html tableData: 'Number of current backend sessions'.
			html tableData: [
				html text: (WAAdmin defaultDispatcher handlerAt: 'via-admin') sessions size asString].
			html tableData: [
			] ].
		html tableRow: [ 
			html tableData: 'Versions'.
			html tableData: [
				self am viaVersions do: [:each | html div: each ] ].
			html tableData.
		]
	]