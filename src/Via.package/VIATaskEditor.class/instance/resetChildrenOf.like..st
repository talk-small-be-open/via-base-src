as yet unclassified
resetChildrenOf: aCompositeTask like: values
	| current diff |

"	values ifBlank: [ ^ self ]."

	current := aCompositeTask children.
	diff := (values size - current size) abs.
	(diff = 0 and: [ current includesAll: values ])
		ifTrue: [
			"resort only" aCompositeTask sortChildrenBy: [ :each | values indexOf: each ] ]
		ifFalse: [
			"new items from other lists. We have to restore. But safe, only if a single change,
			could be error otherwise"
			"We act carefully, since we could destroy all children, if Javascript sends garbage"
			diff = 1 ifTrue: [
				aCompositeTask children: values ]
			]