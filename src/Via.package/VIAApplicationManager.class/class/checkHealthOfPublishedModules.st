as yet unclassified
checkHealthOfPublishedModules

	self db websiteDatasDo: [ :eachWd |
		| all checker warnings |
	
		all := eachWd publicModules.
		warnings := OrderedCollection new.
		
		checker := VIABricksHealthCheckVisitor new.
			
		all do: [ :each |
			checker reset.
			checker start: each.
			checker hasWarnings ifTrue: [
				checker warningMessages do: [ :eachMessage |
					warnings add: (each displayName, ': ', eachMessage) ].
		]].

		warnings ifNotEmpty: [
			eachWd mailer sendToAdminsHealthCheckWarnings: warnings
		]
	]