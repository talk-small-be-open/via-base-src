as yet unclassified
clickAnchor: aScriptString
	^ self anchor
		class: 'clickAction';
		onMouseDown: 'event.preventDefault();'; "Gewisse Browser entfernen hier die aktuelle Markierung"
		onClick: aScriptString;
		yourself