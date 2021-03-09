icons
iconLevelTag: aLevelTag
	aLevelTag ifNil: [^self].
	
	self image
		class: 'level';
		url: (('/site/images/level-', aLevelTag code asString), '.svg')