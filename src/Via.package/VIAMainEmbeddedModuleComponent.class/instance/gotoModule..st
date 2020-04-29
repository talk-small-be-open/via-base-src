as yet unclassified
gotoModule: aModule
"Ehemals gotoSmartModule:
	| effectiveModule |
	
	effectiveModule := (self currentPortfolio newestModuleOfFamily: aModule)
		ifNil: [aModule]."
	
	self openModule: aModule