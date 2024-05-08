convenience
clickButton: aScriptString
	^self ukButtonSmall
		bePush;
		class: 'clickButton';
"		onMouseDown: 'event.preventDefault();';"
		onClick: aScriptString;
		yourself