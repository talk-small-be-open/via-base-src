as yet unclassified
ifEmptyAndAllowed: aBlock notAllowed: anElseBlock
	| value |

	value := self attributeValue.

	"If the value understands the isEmpty message, then we rely on that. Otherwise we can not do anything."
	((value respondsTo: #isEmpty) and: [value isEmpty]) ifTrue: [
		allowEmpty
			ifTrue: aBlock
			ifFalse: anElseBlock]