as yet unclassified
resetChildrenOf: aCompositeTask like: values
	| current |

	"We act carefully, since we could destroy all children, if Javascript sends garbage"

	values ifBlank: [ ^ self ].
	
	current := aCompositeTask children.

	(values size = current size and: [current includesAllOf: values])
	ifTrue: [
		"resort only"
		aCompositeTask sortChildrenBy: [ :each | values indexOf: each ] ]
	ifFalse: [
		"new items from other lists. We have to restore."
		aCompositeTask children: values.
	]