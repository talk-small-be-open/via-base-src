rendering
renderAppClientsOn: html
	html heading level2; with: 'Application clients'.
	html paragraph: 'Each application client can be seen as roughly one installation. Multiple browsers on the same device will lead to multiple client entries. List entry = ID / created / lastSeen'.
	
	model appClients ifNotBlank: [ :collection |
		html unorderedList with: [ 
			collection do: [ :each |
				html listItem: [ 
					html span: each id.
					html span: ' / '.
					html span: (VIAHelper germanDateAndTimeStringFor: each createdAt).
					html span: ' / '.
					html span: (VIAHelper germanDateAndTimeStringFor: each lastSeenAt).
				] ]
	]]