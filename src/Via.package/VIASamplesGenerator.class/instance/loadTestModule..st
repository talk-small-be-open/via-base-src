as yet unclassified
loadTestModule: aWebsite
	|  module |
	
	module := self loadModule: aWebsite.

	(module addTask: self createCompositeTask)
		addChild: self createClozeText;
		addChild: self createHighlightAreas.