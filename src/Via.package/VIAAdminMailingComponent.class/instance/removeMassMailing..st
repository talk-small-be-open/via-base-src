as yet unclassified
removeMassMailing: aMassMailing
	(self confirmYesNo: 'Delete?') ifTrue: [
		self wd removeMassMailing: aMassMailing ]