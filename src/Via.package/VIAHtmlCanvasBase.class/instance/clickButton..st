convenience
clickButton: aScriptString
	^ self button
		bePush;
		class: 'clickButton';
"		onMouseDown: 'event.preventDefault();';"
		onClick: aScriptString;
		yourself