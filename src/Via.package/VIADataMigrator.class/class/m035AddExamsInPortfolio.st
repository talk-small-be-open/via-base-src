as yet unclassified
m035AddExamsInPortfolio

	self db websiteDatasDo: [:eachWd |
		eachWd portfolios do: [:each |
			each initializeDefaultValues.
		].
	
		eachWd exams do: [:each |
			each initializeDefaultValues.
			
			each submittedUsers do: [:eachUser |
				| portfolio |
				portfolio := eachWd findPortfolioByUser: eachUser.
				portfolio ifNotNil: [
					portfolio addExam: each]
			]
		]

	].