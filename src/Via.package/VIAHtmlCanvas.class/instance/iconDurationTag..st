icons
iconDurationTag: aDurationTag
	aDurationTag ifNil: [^self].
	
	self image
"		class: 'icon';"
		class: 'tdu-kuchen';
		url: '/site/images/', (aDurationTag duration min: 4) asString, '-4-kuchen.svg'