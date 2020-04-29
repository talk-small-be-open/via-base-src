testing
isValidEmailDomains: aDomainCollection ofOrganization: anOrganization
	| config inherited |
	
	anOrganization isRoot ifTrue: [^true].
	
	config := anOrganization configuration parent.
	inherited := config emailDomains.
	
	^aDomainCollection allSatisfy: [:eachLocalDomain |
		(self isDomain: eachLocalDomain subDomainAnyOf: inherited) or: [inherited includes: eachLocalDomain]]