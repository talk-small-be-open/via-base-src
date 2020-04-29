as yet unclassified
validationGroup: aBlock
	"Install a new collection for a rules group and use that while executing the rules in the block"
	currentRulesContainer := OrderedCollection new.
	ruleGroups add: currentRulesContainer.
	aBlock value.
	currentRulesContainer := ruleGroups