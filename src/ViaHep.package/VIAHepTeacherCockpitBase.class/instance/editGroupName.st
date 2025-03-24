as yet unclassified
editGroupName
	(self request: 'Name' default: selectedGroup title) ifNotBlank: [ :new |
		selectedGroup title: new
	]
	
