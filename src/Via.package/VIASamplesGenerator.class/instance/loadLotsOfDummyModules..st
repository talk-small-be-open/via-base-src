as yet unclassified
loadLotsOfDummyModules: aWebsite
	|  module |
	

	(1 to: 10) do: [:index |
		aWebsite data exerciseLevels do: [:eachLevel |
			module := self loadModule: aWebsite.
			
			module
				title: ('Dummy ', index asString, ' ', eachLevel).

			3 timesRepeat: [
				(module addTask: self createCompositeTask)
					addChild: self createPillar]]]