private
fillCountersOf: aCollectionOfDocuments
	| anchors numerator |
	anchors := Dictionary new.
	numerator := PRNumeratingVisitor with: self.
	aCollectionOfDocuments do: [ :each | anchors := numerator start: each ].
	aCollectionOfDocuments do: [ :each | (PRNumeratingLinksVisitor with: anchors) start: each ].
	^ anchors