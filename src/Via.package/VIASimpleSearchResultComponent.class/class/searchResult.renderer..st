as yet unclassified
searchResult: aSearchResult renderer: aModuleRenderer
	^self basicNew
		setSearchResult: aSearchResult;
		setShowMap: false;
		setModuleCardRenderer: aModuleRenderer;
		initialize;
		yourself