as yet unclassified
viaVersions
	| projects |
	projects := MetacelloProjectRegistration registry baselineRegistry associationsSelect: [ :each |
		each key beginsWith: 'BaselineOfVia'].
	
	^ projects values collect: [ :each |
		String streamContents: [ :s |
			s << each projectName.
			s << ' Version '.
			s << each versionInfo versionString.
			s << ' from '.
			each repositoryDescriptions
				do: [ :eachRd | s << eachRd ]
				separatedBy: [ s << ', ' ]
		]
	]