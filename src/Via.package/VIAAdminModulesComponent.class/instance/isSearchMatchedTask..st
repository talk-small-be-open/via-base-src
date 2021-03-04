testing
isSearchMatchedTask: aTask
	searchMatchedTasks ifBlank: [ ^ false ].
	^ searchMatchedTasks includes: aTask