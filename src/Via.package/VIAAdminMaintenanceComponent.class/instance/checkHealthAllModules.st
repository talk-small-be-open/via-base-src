as yet unclassified
checkHealthAllModules
	| all checker warnings |

	all := self wd modules.
	warnings := OrderedCollection new.
		
	checker := VIABricksHealthCheckVisitor new.
		
	all do: [ :each |
		checker reset.
		checker start: each.
		checker hasWarnings ifTrue: [
			warnings add: ('Module ', each displayName, ': ', checker warningMessages asCommaString) ].
	].

	warnings
		ifEmpty: [ self inform: 'Everything OK' ]
		ifNotEmpty: [
			self inform: (MCLPlatform joinCollection: warnings delimiter: String lf)
	]