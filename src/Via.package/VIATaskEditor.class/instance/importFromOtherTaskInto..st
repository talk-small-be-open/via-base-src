actions
importFromOtherTaskInto: aCompositeTask
	| sourceTask sourceModule modules |
	
	modules := self wd modules sortedBySortKey.

	sourceModule := self chooseFrom: modules labels: [:e | e displayName ] title: 'admin:chooseModule' default: module.
	sourceModule ifNil: [^self].

	sourceTask := self chooseFrom: sourceModule tasks labels: [:e | e displayName ] title: 'admin:chooseTask' default: nil.
	sourceTask ifNil: [^self].
	
	aCompositeTask addChildren: sourceTask children copyWithCopiedElements