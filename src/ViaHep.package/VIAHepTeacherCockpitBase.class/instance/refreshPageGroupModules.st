actions
refreshPageGroupModules
	| website |
	website := self currentWebsite.
	portfolios := selectedGroup students sortedBySortKey collect: [ :each | each portfolioInWebsite: website ].
	modules := portfolios flatCollectAsSet: [ :each | each modules ].
	modules := modules sortedBySortKey.
	
	moduleAverages := modules map: [ :eachModule |
		| finished done |
		finished := OrderedCollection new.
		done := OrderedCollection new.
		
		portfolios do: [ :eachPortfolio |
			| moduleExercise |
			(eachPortfolio includesModule: eachModule) ifTrue: [ 
				moduleExercise := eachPortfolio exerciseForModule: eachModule.
				
				done add: moduleExercise percentDone.
				finished add: moduleExercise percentFinished ]
		].

		{ done average. finished average }
	]