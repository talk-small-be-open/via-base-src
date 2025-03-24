as yet unclassified
m071MigratePortfolioToSubclass
	| subclass |
	System commit.
	subclass := self am portfolioClass.
	VIAPortfolio addNewVersion: subclass.
	System commit.
	VIAPortfolio migrateInstancesTo: subclass.