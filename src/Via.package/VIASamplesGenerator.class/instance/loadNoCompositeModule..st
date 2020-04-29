as yet unclassified
loadNoCompositeModule: aWebsite
	|  module |
	
	module := self loadModule: aWebsite.

	module addTask: self createClozeText.
	module addTask: self createHighlightAreas.
