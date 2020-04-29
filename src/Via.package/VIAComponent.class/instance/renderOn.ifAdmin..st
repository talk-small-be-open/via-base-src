as yet unclassified
renderOn: html ifAdmin: aBlock
	self currentUser isAdmin ifTrue: [
		html span class: 'adminOnly'; with: [
			html span class: 'adminOnlyLabel'; with: 'ADMIN!'.
			aBlock value]]