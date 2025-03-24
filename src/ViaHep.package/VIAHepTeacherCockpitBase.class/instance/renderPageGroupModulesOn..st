rendering
renderPageGroupModulesOn: html

	html ukContainer: [

		html heading level2; with: selectedGroup displayName.

		html ukButtonGroup: [ 
			self renderBackButton: 'teacherCockpit:back' callback: [ self gotoPageGroupOverview ] on: html.
			html anchorButton
				callback: [ self refreshPageGroupModules ];
				with: [ 
					html iconRefresh.
					html sT: 'teacherCockpit:reload']
		].
	
		html div class: 'scrollingTableContainer topBuffer'; with: [ 
			html ukTable class: 'uk-table-small uk-table-divider'; with: [ 
				html tableHead: [ 
					html tableRow: [ 
						html tableHeading class: 'sticky'.
						modules do: [ :each |
							html tableHeading: [
								html div: each indexCodeLabel.
								html anchor
									callback: [ self selectModule: each ];
									sT: 'teacherCockpit:gotoModule'
							] ]
				]].

				html tableBody: [ 
					html tableRow class: 'average'; with: [ 
						html tableData class: 'sticky'; pT: 'teacherCockpit:average'.
						modules do: [ :each |
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
							
							modules do: [ :eachModule |
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