as yet unclassified
viaVersions
	| projects |
	projects := MetacelloProjectRegistration registry baselineRegistry associationsSelect: [ :each |
		each key beginsWith: 'BaselineOfVia'].
	
	^ projects values collect: [ :each |
		| vi |
		vi := each versionInfo.
		each projectName, ' Version ', vi versionString ]