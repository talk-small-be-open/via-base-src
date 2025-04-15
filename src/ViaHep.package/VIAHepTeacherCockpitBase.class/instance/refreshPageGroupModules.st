actions
refreshPageGroupModules
	| website |
	website := self currentWebsite.
	portfolios := selectedGroup students sortedBySortKey collect: [ :each | each portfolioInWebsite: website ].
	modules := portfolios flatCollectAsSet: [ :each | each modules ].

	modulesBatcher := VIABatchedList new
		batchSize: 5;
		yourself.

	
	modules ifNotEmpty: [ 
		allModuleIndexes := (modules collect: [ :each | each indexCode firstAsIndexCode ]) asSet sorted.
		
		filterModuleIndex ifNil: [ 
			filterModuleIndex := allModuleIndexes lastOrNil.
		].

		modules := modules select: [ :each | each indexCode first = filterModuleIndex first ].
		
		modules := modules sortedBySortKey reversed.
		
		modulesBatcher
			items: modules;
			onPageChange: [ :b |
				moduleAverages := b batch map: [ :eachModule |
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
		] ].
	].

	modulesBatcher gotoPageOne
