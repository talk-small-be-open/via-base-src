initialize-release
initializeDefaultValues
	super initializeDefaultValues.
	
	ruleGroups ifNil: [ruleGroups := OrderedCollection new].
	currentRulesContainer := ruleGroups