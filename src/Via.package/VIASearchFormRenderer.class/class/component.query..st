as yet unclassified
component: aComponent query: aQuery
	^self basicNew
		setComponent: aComponent;
		setQuery: aQuery;
		initialize;
		yourself