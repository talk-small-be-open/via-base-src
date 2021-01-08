as yet unclassified
deleteOnWebsite: aWebsite
	| wd |
	wd := aWebsite data.
	
	wd removePortfolioByUser: self.
	wd removeUser: self.

	self anonymizeMe.