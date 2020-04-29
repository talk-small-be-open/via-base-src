as yet unclassified
renderContentOn: html
	html heading: 'History'.
	html table: [
		self versions do: [:each |
			html tableRow: [
				html tableData: (VIAHelper germanDateAndTimeStringFor: each createdAt).
				html tableData: each versionNumberString.
				html tableData: each displayName.
				html tableData: [
					(self wd hasModule: each) ifFalse: [
						html anchor
							callback: [self reviveModule: each];
							with: 'Put back in list as draft']
					]
				]]]