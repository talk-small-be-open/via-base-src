rendering
renderPageGroupModulesOn: html

	html ukContainer: [

		html heading level2; with: selectedGroup displayName.

		html ukButtonGroup: [ 
			self renderBackButton: 'teacherCockpit:backToOverview' callback: [ self gotoStart ] on: html.
			html anchorButton
				callback: [ self refreshPageGroupModules ];
				with: [ 
					html iconRefresh; space.
					html sT: 'teacherCockpit:reload']
		].
	
		self renderProgressLegendOn: html.
	
		html div class: 'topBuffer'; pT: 'teacherCockpit:modulesList:info'.
		
		html div class: 'tableNavigation'; with: [ 
			html form: [
				html span sT: 'teacherCockpit:modulesList:filterIndex'.
				html space.
				html select
					list: allModuleIndexes;
					submitOnChange;
					on: #filterModuleIndex of: self ].
		
			html render: modulesBatcher.
		].
		
		html div class: 'scrollingTableContainer topBuffer'; with: [ 
			html ukTable class: 'uk-table-small uk-table-divider'; with: [ 
				html tableHead: [ 
					html tableRow: [ 
						html tableHeading class: 'sticky'.
						modulesBatcher batch do: [ :each |
							html tableHeading: [
								html div: each indexCodeLabel.
								html anchor
									callback: [ self selectModule: each ];
									sT: 'teacherCockpit:gotoModule'
							] ]
				]].

				html tableBody: [ 
					html tableRow class: 'average'; with: [ 
						html tableData class: 'sticky'; with: [
							html iconAverage; space.
							html pT: 'teacherCockpit:average'].
						modulesBatcher batch do: [ :each |
							| array f d |
							array := moduleAverages at: each.
							d := array first.
							f := array second.
							
							html tableData: [ 
								html iconProgressFromPercent: d correctness: f.
							]
						]
					].
				
					portfolios do: [ :eachPortfolio |
						| teacherCanView |
						teacherCanView := self canTeacherView: eachPortfolio user.

						html tableRow: [ 
							html tableData  class: 'sticky'; with: eachPortfolio user displayName.
							
							modulesBatcher batch do: [ :eachModule |
								html tableData: [ 
									(eachPortfolio includesModule: eachModule) ifTrue: [
										| moduleExercise |
										moduleExercise := eachPortfolio exerciseForModule: eachModule.

										html iconDoneFinishedExercise: moduleExercise.
										(self needsTeacherInsightModuleExercise: moduleExercise) ifTrue: [ html space. html iconNeedsTeacher ].
										teacherCanView ifTrue: [ 
											html break.
											html anchor
												callback: [ self viewModuleExercise: moduleExercise ];
												sT: 'teacherCockpit:viewExercise'
											].
									] ifFalse: [
										html mdash.
									]

					 			] ]
						].
				]].		
			]		
		]]