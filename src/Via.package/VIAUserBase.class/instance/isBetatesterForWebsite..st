as yet unclassified
isBetatesterForWebsite: aWebsite
	^self isBetatester or: [
		| sgs |
		sgs := self studentGroupsInWebsite: aWebsite.
		sgs anySatisfy: [ :each | each teachers anySatisfy: [ :eachT | eachT isBetatester ] ]
	]